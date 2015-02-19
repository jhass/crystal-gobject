require "./base_info"

module GIRepository
  class EnumInfo < BaseInfo
    each_converted enum_info, value, ValueInfo
    each_converted enum_info, method, FunctionInfo

    def lib_definition
      String.build do |io|
        io.puts "  enum #{name}"
        io.puts "    ZERO_NONE = 0"
        each_value do |value|
          io.puts "  #{value.lib_definition}"
        end
        io.puts "  end"

        each_method do |method|
          io.puts method.lib_definition
        end

        io.puts
      end
    end
  end

  class FlagsInfo < EnumInfo
  end
end
