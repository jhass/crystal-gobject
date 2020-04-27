module GIRepository
  module RegisteredTypeInfo
    def type_lib_definition
      "Lib#{namespace}::#{name}*"
    end

    def type_name
      String.new LibGIRepository.registered_type_info_get_type_name(self)
    end

    def type_init
      String.new LibGIRepository.registered_type_info_get_type_init(self)
    end
  end
end
