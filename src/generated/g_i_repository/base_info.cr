module GIRepository
  class BaseInfo
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(72, 0u8)
      new(ptr.as(LibGIRepository::BaseInfo*))
    end

    @pointer : Void*
    def initialize(pointer : LibGIRepository::BaseInfo*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGIRepository::BaseInfo*)
    end

    def to_unsafe_baseinfo
      @pointer.not_nil!.as(LibGIRepository::BaseInfo*)
    end

    def equal(info2 : GIRepository::BaseInfo)
      __return_value = LibGIRepository.base_info_equal(@pointer.as(LibGIRepository::BaseInfo*), info2.to_unsafe.as(LibGIRepository::BaseInfo*))
      __return_value
    end

    def attribute(name : ::String)
      __return_value = LibGIRepository.base_info_get_attribute(@pointer.as(LibGIRepository::BaseInfo*), name.to_unsafe)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def container
      __return_value = LibGIRepository.base_info_get_container(@pointer.as(LibGIRepository::BaseInfo*))
      GIRepository::BaseInfo.new(__return_value)
    end

    def name
      __return_value = LibGIRepository.base_info_get_name(@pointer.as(LibGIRepository::BaseInfo*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def namespace
      __return_value = LibGIRepository.base_info_get_namespace(@pointer.as(LibGIRepository::BaseInfo*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def type
      __return_value = LibGIRepository.base_info_get_type(@pointer.as(LibGIRepository::BaseInfo*))
      GIRepository::InfoType.new(__return_value)
    end

    def typelib
      __return_value = LibGIRepository.base_info_get_typelib(@pointer.as(LibGIRepository::BaseInfo*))
      GIRepository::Typelib.new(__return_value)
    end

    def deprecated?
      __return_value = LibGIRepository.base_info_is_deprecated(@pointer.as(LibGIRepository::BaseInfo*))
      __return_value
    end

    def iterate_attributes(iterator : GIRepository::AttributeIter, name : ::String, value : ::String)
      __return_value = LibGIRepository.base_info_iterate_attributes(@pointer.as(LibGIRepository::BaseInfo*), iterator, name, value)
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

