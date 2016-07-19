require "./base_info"

module GIRepository
  class ArgInfo < BaseInfo
    KEYWORDS = {"def", "alias", "module", "out", "begin", "self"}

    def name
      name = super
      name = "_#{name}" if KEYWORDS.includes? name
      name.gsub(/_+$/, "")
    end

    def direction
      LibGIRepository.arg_info_get_direction(self)
    end

    def out?
       direction == LibGIRepository::Direction::OUT
    end

    def inout?
      direction == LibGIRepository::Direction::INOUT
    end

    def optional?
      LibGIRepository.arg_info_is_optional self
    end

    def nullable?
      LibGIRepository.arg_info_may_be_null self
    end

    def type
      TypeInfo.new LibGIRepository.arg_info_get_type(self)
    end

    def lib_definition
      String.build do |io|
        io << name << " : " << type.lib_definition
        io << '*' if out? || inout?
      end
    end

    def for_wrapper_definition(libname)
      if type.tag == LibGIRepository::TypeTag::INTERFACE
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
        "#{"#{name} && " if nullable?}#{type.convert_from_crystal(name)}"
      end
    end
  end
end
