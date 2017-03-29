module GIRepository
  class BaseInfo
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(72, 0u8)
      super(ptr.as(LibGIRepository::BaseInfo*))
    end

    @g_i_repository_base_info : LibGIRepository::BaseInfo*?
    def initialize(@g_i_repository_base_info : LibGIRepository::BaseInfo*)
    end

    def to_unsafe
      @g_i_repository_base_info.not_nil!
    end

    def equal(info2)
      __return_value = LibGIRepository.base_info_equal(to_unsafe.as(LibGIRepository::BaseInfo*), info2.to_unsafe.as(LibGIRepository::BaseInfo*))
      __return_value
    end

    def attribute(name)
      __return_value = LibGIRepository.base_info_get_attribute(to_unsafe.as(LibGIRepository::BaseInfo*), name)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def container
      __return_value = LibGIRepository.base_info_get_container(to_unsafe.as(LibGIRepository::BaseInfo*))
      GIRepository::BaseInfo.new(__return_value)
    end

    def name
      __return_value = LibGIRepository.base_info_get_name(to_unsafe.as(LibGIRepository::BaseInfo*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def namespace
      __return_value = LibGIRepository.base_info_get_namespace(to_unsafe.as(LibGIRepository::BaseInfo*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def type
      __return_value = LibGIRepository.base_info_get_type(to_unsafe.as(LibGIRepository::BaseInfo*))
      __return_value
    end

    def typelib
      __return_value = LibGIRepository.base_info_get_typelib(to_unsafe.as(LibGIRepository::BaseInfo*))
      GIRepository::Typelib.new(__return_value)
    end

    def deprecated?
      __return_value = LibGIRepository.base_info_is_deprecated(to_unsafe.as(LibGIRepository::BaseInfo*))
      __return_value
    end

    def iterate_attributes(iterator, name, value)
      __return_value = LibGIRepository.base_info_iterate_attributes(to_unsafe.as(LibGIRepository::BaseInfo*), iterator, name, value)
      __return_value
    end

    def dummy1
      (to_unsafe.as(LibGIRepository::BaseInfo*).value.dummy1)
    end

    def dummy2
      (to_unsafe.as(LibGIRepository::BaseInfo*).value.dummy2)
    end

    def dummy3
      (to_unsafe.as(LibGIRepository::BaseInfo*).value.dummy3)
    end

    def dummy4
      (to_unsafe.as(LibGIRepository::BaseInfo*).value.dummy4)
    end

    def dummy5
      (to_unsafe.as(LibGIRepository::BaseInfo*).value.dummy5)
    end

    def dummy6
      (to_unsafe.as(LibGIRepository::BaseInfo*).value.dummy6)
    end

    def dummy7
      (to_unsafe.as(LibGIRepository::BaseInfo*).value.dummy7)
    end

    def padding
      PointerIterator.new((to_unsafe.as(LibGIRepository::BaseInfo*).value.padding)) {|__item| __item }
    end

  end
end

