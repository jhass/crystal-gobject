module GIRepository
  class BaseInfo
    include GObject::WrappedType

    def initialize(@g_i_repository_base_info)
    end

    def to_unsafe
      @g_i_repository_base_info.not_nil!
    end

    def equal(info2)
      __return_value = LibGIRepository.base_info_equal((to_unsafe as LibGIRepository::BaseInfo*), (info2.to_unsafe as LibGIRepository::BaseInfo*))
      __return_value
    end

    def attribute(name)
      __return_value = LibGIRepository.base_info_get_attribute((to_unsafe as LibGIRepository::BaseInfo*), name)
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def container
      __return_value = LibGIRepository.base_info_get_container((to_unsafe as LibGIRepository::BaseInfo*))
      GIRepository::BaseInfo.new(__return_value)
    end

    def name
      __return_value = LibGIRepository.base_info_get_name((to_unsafe as LibGIRepository::BaseInfo*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def namespace
      __return_value = LibGIRepository.base_info_get_namespace((to_unsafe as LibGIRepository::BaseInfo*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def type
      __return_value = LibGIRepository.base_info_get_type((to_unsafe as LibGIRepository::BaseInfo*))
      __return_value
    end

    def typelib
      __return_value = LibGIRepository.base_info_get_typelib((to_unsafe as LibGIRepository::BaseInfo*))
      GIRepository::Typelib.new(__return_value)
    end

    def deprecated?
      __return_value = LibGIRepository.base_info_is_deprecated((to_unsafe as LibGIRepository::BaseInfo*))
      __return_value
    end

    def iterate_attributes(iterator, name, value)
      __return_value = LibGIRepository.base_info_iterate_attributes((to_unsafe as LibGIRepository::BaseInfo*), (iterator.to_unsafe as LibGIRepository::AttributeIter*), name, value)
      __return_value
    end

  end
end

