require "./base_info"

module GIRepository
  class ArgInfo < BaseInfo
    KEYWORDS = {"def", "alias", "module", "out", "begin", "self", "end", "abstract"}

    def name
      name = super
      name = "_#{name}" if name[0].uppercase? if name
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

    def nilable?
      nullable? || optional?
    end

    def gvalue_out?
      out? && type.tag.interface? && type.interface.namespace == "GObject" && type.interface.name == "Value"
    end

    def return_value?
      GIRepository.arg_info_is_return_value(self)
    end

    def skip?
      GIRepository.arg_info_is_skip(self)
    end

    def type
      BaseInfo.wrap(GIRepository.arg_info_get_type(self)).as(TypeInfo)
    end

    def ownership_transfer
      GIRepository.arg_info_get_ownership_transfer(self)
    end

    def caller_allocates?
      GIRepository.arg_info_is_caller_allocates(self)
    end

    def lib_definition
      String.build do |io|
        io << name << " : " << type.lib_definition
        io << '*' if out? || inout?
      end
    end

    def for_wrapper_definition(libname)
      arg = case type.tag
            when .int8?, .uint8?, .int16?, .uint16?, .int32?, .uint32?, .int64?, .uint64?
              "#{name} : ::Int"
            when .float?, .double?
              "#{name} : ::Float"
            when .array?
              if type.param_type.tag.uint8? # Assume UInt8* (gchar*) is a string for now
                "#{name} : ::String"
              else
                "#{name} : ::Enumerable#{"?" if nilable?}"
              end
            when .interface?
              interface = type.interface
              if interface.namespace == "GObject" && interface.name == "Value"
                name
              elsif interface.is_a?(UnionInfo)
                "#{name} : #{type.wrapper_definition(libname)}::Union#{"?" if nilable?}"
              end
            else
            end

      arg || "#{name} : #{type.wrapper_definition(libname)}#{"?" if nilable?}"
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
      dumper.puts "* return_value = #{return_value?}"
      dumper.puts "* ownership = #{ownership_transfer}"
      dumper.puts "* caller_allocates = #{caller_allocates?}"
      dumper.puts "* skip = #{skip?}"
      Dumper.dump_child type
    end
  end
end
