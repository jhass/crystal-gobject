module GIRepository
  module RegisteredTypeInfo
    def type_lib_definition
      "Lib#{namespace}::#{name}*"
    end

    def type_name
      ptr = LibGIRepository.registered_type_info_get_type_name(self)
      String.new ptr if ptr
    end

    def type_init_symbol
      ptr = LibGIRepository.registered_type_info_get_type_init(self)
      symbol = String.new ptr if ptr
      symbol == "intern" ? nil : symbol
    end

    def type_init
      symbol = type_init_symbol
      "_#{type_init_symbol}" if type_init_symbol
    end

    def type_init_lib_definition(builder)
      type_init = self.type_init
      builder.fun_binding type_init_symbol, name: type_init, return_type: "UInt64" if type_init
    end

    def wrapper_gtype(builder, libname)
      if type_init = self.type_init
        builder.call(type_init, receiver: libname)
      else
        builder.call("type_from_name", builder.literal(type_name), receiver: "GObject")
      end
    end
  end
end
