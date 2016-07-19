require "./base_info"
module GIRepository
  class CallbackInfo < BaseInfo
    include CallableInfo

    def lib_definition
      String.build do |io|
        io << " alias #{name} = "
        io << args.map(&.type.lib_definition).join(", ")
        io << " -> #{return_type.lib_definition}"
      end
    end

    def wrapper_definition(libname, indent="")
      "#{indent}alias #{name} = #{libname}::#{name}"
    end

    def for_wrapper_definition(libname, indent="")
      return_type = self.return_type.wrapper_definition(libname, indent)
      return_type = "" if return_type == "Void" || return_type == "Void*"
      "(#{args.map(&.type.wrapper_definition(libname, indent)).join(", ")} -> #{return_type})"
    end

    def for_wrapper_pass(libname, variable, indent="")
      arg_definition = args.map(&.name).join(", ")
      arg_definition = "|#{arg_definition}|" unless arg_definition.empty?
      "#{libname}::#{name}.new {#{arg_definition} __callback = #{variable}; __callback && #{return_type.convert_from_crystal("__callback.call(#{args.map(&.from_wrapper_pass).join(", ")})")} }"
    end
  end
end
