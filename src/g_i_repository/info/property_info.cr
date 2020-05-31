require "./base_info"

module GIRepository
  class PropertyInfo < BaseInfo
    def crystal_name
      name = self.name
      name.tr("-", "_") if name
    end

    def arg_name
      name = crystal_name
      name = "_#{name}" if name[0].uppercase? if name
      name = "_#{name}" if ArgInfo::KEYWORDS.includes? name
      name.gsub(/_+$/, "") if name
      name
    end

    def type
      BaseInfo.wrap(GIRepository.property_info_get_type(self)).as(TypeInfo)
    end

    def flags
      GIRepository.property_info_get_flags self
    end

    def getter?
      flags.readable?
    end

    def setter?
      flags.writable?
    end

    def construct_only?
      flags.construct_only?
    end

    def private?
      flags.private?
    end

    def lib_definition(builder)
      builder.comment "Property #{name} : #{type.lib_definition(builder)}"
    end

    def wrapper_definition(builder, libname)
      ptr = builder.call("as", "LibGObject::Object*", receiver: "@pointer")
      if getter?
        builder.def_method(crystal_name, return_type: type.wrapper_definition(builder, libname)) do
          gvalue = line assign_var call("new", {type: type.gvalue_type}, receiver: "GObject::Value")
          line call("object_get_property", ptr, literal(name), gvalue, receiver: "LibGObject")
          line type.unwrap_gvalue(gvalue)
        end
      end

      if setter? && !construct_only?
        builder.def_method("#{crystal_name}=", builder.arg("value", type: type.wrapper_definition(builder, libname))) do
          line call("object_set_property", ptr, literal(name), call("to_gvalue", receiver: "value"), receiver: "LibGObject")
        end
      end
    end

    Dumper.def do
      dumper.puts "* flags = #{flags}"
      Dumper.dump_child type
    end
  end
end
