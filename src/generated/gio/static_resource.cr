module Gio
  class StaticResource
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(40, 0u8)
      super(ptr.as(LibGio::StaticResource*))
    end

    @pointer : Void*
    def initialize(pointer : LibGio::StaticResource*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::StaticResource*)
    end

    def fini
      LibGio.static_resource_fini(@pointer.as(LibGio::StaticResource*))
      nil
    end

    def resource
      __return_value = LibGio.static_resource_get_resource(@pointer.as(LibGio::StaticResource*))
      Gio::Resource.new(__return_value)
    end

    def init
      LibGio.static_resource_init(@pointer.as(LibGio::StaticResource*))
      nil
    end

    def data
      (to_unsafe.as(LibGio::StaticResource*).value.data)
    end

    def data_len
      (to_unsafe.as(LibGio::StaticResource*).value.data_len)
    end

    def resource
      Gio::Resource.new((to_unsafe.as(LibGio::StaticResource*).value.resource))
    end

    def next
      Gio::StaticResource.new((to_unsafe.as(LibGio::StaticResource*).value.next_))
    end

    def padding
      (to_unsafe.as(LibGio::StaticResource*).value.padding)
    end

  end
end

