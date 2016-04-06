require "./base_info"

module GIRepository
  class InterfaceInfo < BaseInfo
    each_converted interface_info, constant, ConstantInfo
    each_converted interface_info, method, FunctionInfo
    each_converted interface_info, prerequisite, BaseInfo
    each_converted interface_info, property, PropertyInfo, properties
    each_converted interface_info, signal, SignalInfo
    each_converted interface_info, vfunc, VFuncInfo

    def iface_struct
      ptr = LibGIRepository.interface_info_get_iface_struct(self)
      StructInfo.new ptr if ptr
    end

    def lib_definition
      String.build do |io|
        io.puts "  struct #{name} # interface"

        iface_struct = self.iface_struct
        if iface_struct
          iface_struct.field_definition(io)
        else
          io.puts "    _data : UInt8[0]"
        end

        each_constant do |constant|
          io.puts "  #{constant.lib_definition}"
        end

        each_prerequisite do |prerequisite|
          io.puts "  # Requires #{prerequisite.name}"
        end

        each_property do |property|
          io.puts "  #{property.lib_definition}"
        end

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
        io.puts "#{indent}module #{name}"

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
