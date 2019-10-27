require "./base_info"

module GIRepository
  class ArgInfo < BaseInfo
    KEYWORDS = {"def", "alias", "module", "out", "begin", "self", "end"}

    def name
      name = super
      name = "_#{name}" if KEYWORDS.includes? name
      name.gsub(/_+$/, "") if name
    end

    def direction
      GIRepository.arg_info_get_direction(self)
    end

    def out?
      direction.out?
    end

    def inout?
      direction.inout?
    end

    def optional?
      GIRepository.arg_info_is_optional self
    end

    def nullable?
      GIRepository.arg_info_may_be_null self
    end

    def type
      BaseInfo.wrap(GIRepository.arg_info_get_type(self)).as(TypeInfo)
    end

    def lib_definition
      String.build do |io|
        io << name << " : " << type.lib_definition
        io << '*' if out? || inout?
      end
    end

    def for_wrapper_definition(libname)
      if type.tag.interface?
        interface = type.interface
        case interface
        when EnumInfo, FlagsInfo
          "#{name} : #{type.wrapper_definition(libname)}#{"?" if nullable? || optional?}"
        else
          name
        end
      else
        name
      end
    end

    def for_wrapper_pass(libname)
      if out? || inout?
        name
      else
        # TODO: workaround https://github.com/crystal-lang/crystal/issues/4209
        if nullable?
          "#{name} ? #{type.convert_from_crystal(name)} : nil"
        else
          type.convert_from_crystal(name)
        end
      end
    end

    def from_wrapper_pass
      if out? || inout?
        name
      else
        "#{"#{name} && " if nullable?}#{type.convert_to_crystal(name)}"
      end
    end

    Dumper.def do
      dumper.puts "* direction = #{direction}"
      dumper.puts "* optional = #{optional?}"
      dumper.puts "* nullable = #{nullable?}"
      Dumper.dump_child type
    end
  end
end
