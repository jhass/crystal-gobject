require "./base_info"

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

  def definition
    String.build do |io|
      io.puts "  struct #{name} # interface"

      iface_struct = self.iface_struct
      if iface_struct
        iface_struct.each_field do |field|
          io.puts "#{field.definition}"
        end
      end

      each_constant do |constant|
        io.puts "  #{constant.definition}"
      end

      each_prerequisite do |prerequisite|
        io.puts "  # Requires #{prerequisite.name}"
      end

      each_property do |property|
        io.puts "  #{property.definition}"
      end

      each_signal do |signal|
        io.puts "  #{signal.definition}"
      end

      each_vfunc do |vfunc|
        io.puts "  #{vfunc.definition}"
      end

      io.puts "  end"

      each_method do |method|
        io.puts method.definition
      end
      io.puts
    end
  end


  def declaration
    "  struct #{name}; end # interface"
  end
end
