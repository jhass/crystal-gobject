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
      tag = GIRepository.enum_info_get_storage_type(self)
      TypeInfo::TAG_MAP[tag]
    end

    def lib_definition
      String.build do |io|
        io.puts "  alias #{name} = #{type}"

        each_method do |method|
          io.puts method.lib_definition
        end

        io.puts
      end
    end

    def wrapper_definition(libname, indent = "")
      String.build do |io|
        #io.puts "#{indent}alias #{name} = #{libname}::#{name}"
        attributes(io)
        io.puts "#{indent}enum #{name} : #{type}"
        io.puts "#{indent}  ZERO_NONE = 0"

        each_value do |value|
          io.puts "#{indent}#{value.lib_definition}"
        end

        each_method do |method|
          io.puts "#{indent}  # Function #{method.name}"
        end
        io.puts "#{indent}end"
      end
    end

    Dumper.def do
      dumper.puts "* type = #{type}"
      Dumper.dump_childs value
      Dumper.dump_childs method
    end
  end

  class FlagsInfo < EnumInfo
    def attributes(io)
      io.puts "  @[Flags]"
    end
  end
end
