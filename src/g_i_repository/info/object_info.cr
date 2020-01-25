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

        write_constructor libname, io, indent
        write_to_unsafe libname, io, indent

        each_interface do |interface|
          io.puts "#{indent}  include #{interface.full_constant}" unless interface.info_type.unresolved?
        end

        each_property do |property|
          io.puts property.wrapper_definition libname, indent + "  "
        end

        write_methods libname, io, indent

        each_signal do |signal|
          io.puts signal.wrapper_definition libname, indent + "  "
        end

        io.puts "#{indent}end"
      end
    end

    Dumper.def do
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
