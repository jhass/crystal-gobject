module Gio
  class StaticResource
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(40, 0)
      super(ptr.as(LibGio::StaticResource*))
    end

    @gio_static_resource : LibGio::StaticResource*?
    def initialize(@gio_static_resource : LibGio::StaticResource*)
    end

    def to_unsafe
      @gio_static_resource.not_nil!.as(Void*)
    end

    def fini
      __return_value = LibGio.static_resource_fini(to_unsafe.as(LibGio::StaticResource*))
      __return_value
    end

    def resource
      __return_value = LibGio.static_resource_get_resource(to_unsafe.as(LibGio::StaticResource*))
      Gio::Resource.new(__return_value)
    end

    def init
      __return_value = LibGio.static_resource_init(to_unsafe.as(LibGio::StaticResource*))
      __return_value
    end

    def data
      (to_unsafe.value.data)
    end

    def data_len
      (to_unsafe.value.data_len)
    end

    def resource
      Gio::Resource.new((to_unsafe.value.resource))
    end

    def next
      Gio::StaticResource.new((to_unsafe.value.next_))
    end

    def padding
      (to_unsafe.value.padding)
    end

  end
end

