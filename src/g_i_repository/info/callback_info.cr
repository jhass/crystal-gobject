require "./base_info"

module GIRepository
  class CallbackInfo < BaseInfo
    include CallableInfo

    def name
      super.not_nil!
    end

    def signature(builder)
      builder.proc_type(args.map(&.type.lib_definition(builder)), return_type: return_type.lib_definition(builder))
    end

    def lib_definition(builder)
      builder.def_alias name, signature(builder)
    end

    def wrapper_definition(builder, libname)
      builder.def_alias name, "#{libname}::#{name}"
    end

    def for_wrapper_definition(builder, libname)
      return_type = self.return_type.wrapper_definition(builder, libname)
      return_type = "" if return_type == "Void" || return_type == "Void*"
      builder.proc_type args.map(&.type.wrapper_definition(builder, libname)), return_type: return_type
    end
  end
end
