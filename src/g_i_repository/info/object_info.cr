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
      ptr = LibGIRepository.object_info_get_parent self
      ObjectInfo.new ptr if ptr
    end

    def abstract?
      LibGIRepository.object_info_get_abstract self
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
          constructor_properties = properties.select { |property| property.setter? }
          gtype = %(GObject.type_from_name("#{type_name}"))
          constructor_args = constructor_properties.map { |property| "#{property.arg_name} : #{property.type.wrapper_definition}? = nil" }

          if !constructor_properties.empty? || !has_any_constructor?
            io.puts "#{indent}  # :nodoc:"
            io.puts "#{indent}  lib LibGType"
            io.puts "#{indent}    fun init = #{type_init}"
            io.puts "#{indent}  end"
            io.puts
          end

          if !constructor_properties.empty?
            io.puts "#{indent}  def initialize(*, #{constructor_args.join(", ")})"
            io.puts "#{indent}    __names = [] of UInt8*"
            io.puts "#{indent}    __values = [] of LibGObject::Value"
            constructor_properties.each do |property|
              io.puts "#{indent}    unless #{property.arg_name}.nil?"
              io.puts %(#{indent}      __names << "#{property.name}".to_unsafe)
              property.wrap_in_gvalue(property.arg_name, "gvalue", io, indent + "      ")
              io.puts "#{indent}      __values << gvalue.to_unsafe.value"
              io.puts "#{indent}    end"
            end
            io.puts "#{indent}    LibGType.init"
            io.puts "#{indent}    @pointer = LibGObject.new_with_properties(#{gtype}, __names.size, __names, __values).as(Void*)"
            io.puts "#{indent}  end"
          elsif !has_any_constructor?
            io.puts "#{indent}  def initialize"
            io.puts "#{indent}    LibGType.init"
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
