require "./base_info"

class ObjectInfo < BaseInfo
  each_converted object_info, constant, ConstantInfo
  each_converted object_info, field, FieldInfo
  each_converted object_info, method, FunctionInfo
  each_converted object_info, interface, InterfaceInfo
  each_converted object_info, property, PropertyInfo, properties
  each_converted object_info, signal, SignalInfo
  each_converted object_info, vfunc, VFuncInfo

  def definition
    String.build do |io|
      io.puts "  struct #{name} # object"

      each_interface do |interface|
        io.puts "    # Implements #{interface.name}"
      end

      each_constant do |constant|
        io.puts "  #{constant.definition}"
      end

      each_field do |field|
        io.puts "  #{field.definition}"
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
end
