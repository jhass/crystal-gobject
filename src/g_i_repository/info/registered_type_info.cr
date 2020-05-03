module GIRepository
  module RegisteredTypeInfo
    def type_lib_definition
      "Lib#{namespace}::#{name}*"
    end

    def type_name
      ptr = LibGIRepository.registered_type_info_get_type_name(self)
      String.new ptr if ptr
    end

    def type_init
      ptr = LibGIRepository.registered_type_info_get_type_init(self)
      String.new ptr if ptr
    end
  end
end
