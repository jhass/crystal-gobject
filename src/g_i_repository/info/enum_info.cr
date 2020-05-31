require "./base_info"
require "./type_info"
require "./registered_type_info"

module GIRepository
  class EnumInfo < BaseInfo
    include RegisteredTypeInfo

    each_converted enum_info, value, ValueInfo
    each_converted enum_info, method, FunctionInfo

    def attributes(builder)
    end

    def name
      super.not_nil!
    end

    def type_tag
      GIRepository.enum_info_get_storage_type(self)
    end

    def type
      TypeInfo::TAG_MAP[type_tag]
    end

    def lib_definition(builder)
      builder.section do
        builder.def_alias name, type
        each_method &.lib_definition(builder)
      end
    end

    def wrapper_definition(builder, libname)
      attributes(builder)
      builder.def_enum(name, type: type) do
        line assign "ZERO_NONE", literal(0) unless values.any? { |value| value.value == 0 }

        each_value do |value|
          if name = value.name
            name = name.upcase
            if 'A' <= name[0] <= 'Z'
              line assign name, literal(value.literal(type_tag))
            else
              comment "#{name} = #{literal(value.literal(type_tag))}"
            end
          end
        end
      end

      each_method { |method| builder.comment "Function #{method.name}" }
    end

    Dumper.def do
      dumper.puts "* type = #{type}"
      Dumper.dump_childs value
      Dumper.dump_childs method
    end
  end

  class FlagsInfo < EnumInfo
    def attributes(builder)
      builder.annotation("Flags")
    end
  end
end
