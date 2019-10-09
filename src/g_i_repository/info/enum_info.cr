require "./base_info"
require "./type_info"
require "./registered_type_info"

module GIRepository
  class EnumInfo < BaseInfo
    include RegisteredTypeInfo

    each_converted enum_info, value, ValueInfo
    each_converted enum_info, method, FunctionInfo

    def attributes(io)
    end

    def type
      tag = LibGIRepository.enum_info_get_storage_type(self)
      TypeInfo::TAG_MAP[tag]
    end

    def lib_definition
      String.build do |io|
        attributes(io)
        io.puts "  enum #{name} : #{type}"
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

    def wrapper_definition(libname, indent = "")
      String.build do |io|
        io.puts "#{indent}alias #{name} = #{libname}::#{name}"
        each_method do |method|
          io.puts "#{indent}# Function #{method.name}"
        end
      end
    end
  end

  class FlagsInfo < EnumInfo
    def attributes(io)
      io.puts "  @[Flags]"
    end
  end
end
