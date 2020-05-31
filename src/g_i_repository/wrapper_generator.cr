module GIRepository
  module WrapperGenerator
    def ptr_type(libname)
      "#{libname}::#{name}*"
    end

    def to_unsafe_name
      name = self.name
      "to_unsafe_#{name.downcase}" if name
    end

    def write_constructor(builder, libname)
      pointer = nil
      builder.section { pointer = line def_instance_var "@pointer", type: "Void*" }
      builder.def_method("initialize", builder.arg("pointer", type: ptr_type(libname))) do
        line assign pointer, call("as", "Void*", receiver: "pointer")
        if self.is_a?(ObjectInfo) || self.is_a?(InterfaceInfo)
          type_instance = call("as", "LibGObject::TypeInstance*", receiver: "pointer")
          gtype = call("type_from_name", literal(type_name), receiver: "GObject")
          is_gtype = call("type_check_instance_is_a", type_instance, gtype, receiver: "LibGObject")
          error = call("new", literal("\#{type_name} is not a #{type_name}"), receiver: "ArgumentError")
          throw = call("raise", error)
          conditional_line negate(is_gtype), throw
        end
      end
    end

    def write_to_unsafe(builder, libname)
      builder.def_method("to_unsafe") do
        pointer = call("not_nil!", receiver: "@pointer")
        line call("as", ptr_type(libname), receiver: pointer)
      end

      write_interface_to_unsafe(builder, libname)
    end

    def write_interface_to_unsafe(builder, libname)
      return unless name = to_unsafe_name

      builder.def_method(name) do
        pointer = call("not_nil!", receiver: "@pointer")
        line call("as", ptr_type(libname), receiver: pointer)
      end
    end

    def write_methods(builder, libname)
      each_method &.wrapper_definition(builder, libname)
    end

    def has_method_getter_or_setter?(name)
      each_method do |method|
        return true if method.wrapper_name == name || method.wrapper_name == "#{name}="
      end
      false
    end

    def has_any_constructor?
      each_method do |method|
        return true if method.constructor?
      end
      false
    end
  end
end
