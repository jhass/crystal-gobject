require "./base_info"
require "./registered_type_info"

module GIRepository
  class ObjectInfo < BaseInfo
    include RegisteredTypeInfo
    include WrapperGenerator

    each_converted object_info, constant, ConstantInfo
    each_converted object_info, field, FieldInfo
    each_converted object_info, method, FunctionInfo
    each_converted object_info, interface, InterfaceInfo
    each_converted object_info, property, PropertyInfo, properties
    each_converted object_info, signal, SignalInfo
    each_converted object_info, vfunc, VFuncInfo

    def parent
      ptr = GIRepository.object_info_get_parent self
      BaseInfo.wrap(ptr).as(ObjectInfo) if ptr
    end

    def abstract?
      GIRepository.object_info_get_abstract self
    end

    # Including those of ancestors
    def all_properties
      properties = self.properties # start with our own

      # Then walk parents
      parent = self.parent
      while parent
        parent.properties.each do |property|
          # Avoid duplicates, let child properties of the same name shadow the parent ones
          properties << property unless properties.any?(&.name.==(property.name))
        end

        parent = parent.parent
      end

      # Finally walk interfaces
      each_interface do |interface|
        interface.properties.each do |property|
          # Avoid duplicates, let child properties of the same name shadow the interface ones
          properties << property unless properties.any?(&.name.==(property.name))
        end

        # TODO: find an example interface with a prequisite and see if we handle that correctly
      end

      properties.sort_by(&.name.not_nil!)
    end

    def class_struct
      info = GIRepository.object_info_get_class_struct(self)
      BaseInfo.wrap(info).as(StructInfo) if info
    end

    def lib_definition
      String.build do |io|
        each_constant do |constant|
          io.puts constant.lib_definition
        end

        io.puts "  struct #{name} # object"

        each_field do |field|
          io.puts "  #{field.lib_definition}"
        end
        io.puts "    _data : UInt8[0]" if fields_size == 0

        each_signal do |signal|
          io.puts "  #{signal.lib_definition}"
        end

        each_vfunc do |vfunc|
          io.puts "  #{vfunc.lib_definition}"
        end

        each_property do |property|
          io.puts "  #{property.lib_definition}"
        end

        io.puts "  end"

        io.puts "  fun _#{type_init} = #{type_init} : UInt64" unless type_init == "intern"

        each_method do |method|
          io.puts method.lib_definition
        end

        io.puts
      end
    end

    def wrapper_definition(libname, indent = "")
      String.build do |io|
        parent_object = parent
        parent = parent_object.constant if parent_object && parent_object.namespace == namespace
        parent ||= parent_object.full_constant if parent_object

        io << "#{indent}class #{name}"
        io << (parent ? " < #{parent}\n" : "\n")
        io << "#{indent}  include GObject::WrappedType\n\n" unless parent

        each_interface do |interface|
          io.puts "#{indent}  include #{interface.full_constant}" unless interface.info_type.unresolved?
        end

        write_constructor libname, io, indent
        write_to_unsafe libname, io, indent

        unless abstract?
          constructor_properties = all_properties.select { |property| property.setter? }
          gtype = type_init == "intern" ? %(GObject.type_from_name("#{type_name}")) : "#{libname}._#{type_init}"
          constructor_args = constructor_properties.map { |property| "#{property.arg_name} : #{property.type.wrapper_definition(libname)}? = nil" }

          if !constructor_properties.empty?
            io.puts "#{indent}  def initialize(*, #{constructor_args.join(", ")})"
            io.puts "#{indent}    __names = [] of UInt8*"
            io.puts "#{indent}    __values = [] of LibGObject::Value"
            constructor_properties.each do |property|
              io.puts "#{indent}    unless #{property.arg_name}.nil?"
              io.puts "#{indent}      __names << \"#{property.name}\".to_unsafe"
              io.puts "#{indent}      __values << #{property.arg_name}.to_gvalue.to_unsafe.value"
              io.puts "#{indent}    end"
            end
            io.puts "#{indent}    @pointer = LibGObject.new_with_properties(#{gtype}, __names.size, __names, __values).as(Void*)"
            io.puts "#{indent}  end"
          elsif !has_any_constructor?
            io.puts "#{indent}  def initialize"
            io.puts "#{indent}    @pointer = LibGObject.new_with_properties(#{gtype}, 0, nil, nil).as(Void*)"
            io.puts "#{indent}  end"
          end
          io.puts
        end

        write_methods libname, io, indent

        each_property do |property|
          next if has_method_getter_or_setter?(property.crystal_name)
          next if property.private?
          io.puts property.wrapper_definition libname, indent + "  "
        end

        each_signal do |signal|
          io.puts signal.wrapper_definition libname, indent + "  "
        end

        io.puts "#{indent}end"
      end
    end

    Dumper.def do |dumper|
      dumper.puts "* abstract = #{abstract?}"
      Dumper.dump_child parent
      Dumper.dump_child class_struct
      Dumper.dump_childs constant
      Dumper.dump_childs interface
      Dumper.dump_childs field
      Dumper.dump_childs property, properties
      Dumper.dump_childs method
      Dumper.dump_childs vfunc
      Dumper.dump_childs signal
    end
  end
end
