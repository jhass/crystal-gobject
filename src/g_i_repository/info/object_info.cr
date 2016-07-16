require "./base_info"

module GIRepository
  class ObjectInfo < BaseInfo
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
        io.puts "  struct #{name} # object"

        each_constant do |constant|
          io.puts "  #{constant.lib_definition}"
        end

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

        io.puts "  end"

        each_method do |method|
          io.puts method.lib_definition
        end

        io.puts
      end
    end

    def wrapper_definition(libname, indent="")
      String.build do |io|
        parent_object = parent
        parent = parent_object.constant if parent_object && parent_object.namespace == namespace
        parent ||= parent_object.full_constant if parent_object

        io << "#{indent}class #{name}"
        io << (parent ? " < #{parent}\n" : "\n")
        io << "#{indent}  include GObject::WrappedType\n\n" unless parent


        # TODO: extract redundancy with StructInfo

        ptr = "@#{GIRepository.filename(full_constant)}"
        ptr_type = "#{libname}::#{name}*"
        io.puts "#{indent}  #{ptr} : #{ptr_type}?"
        io.puts "#{indent}  def initialize(#{ptr} : #{ptr_type})"
        io.puts "#{indent}  end"
        io.puts
        io.puts "#{indent}  def to_unsafe"
        io.puts "#{indent}    #{ptr}.not_nil!.as(Void*)"
        io.puts "#{indent}  end"
        io.puts

        each_interface do |interface|
          io.puts "#{indent}  # Implements #{interface.name}"
        end

        each_property do |property|
          io.puts property.wrapper_definition libname, indent+"  "
        end

        each_method do |method|
          io.puts method.wrapper_definition libname, indent+"  "
          io.puts
        end

        each_signal do |signal|
          io.puts signal.wrapper_definition libname, indent+"  "
        end

        io.puts "#{indent}end"
      end
    end
  end
end
