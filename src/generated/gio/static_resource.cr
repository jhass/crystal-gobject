module Gio
  class StaticResource
    include GObject::WrappedType

    def initialize(@gio_static_resource)
    end

    def to_unsafe
      @gio_static_resource.not_nil!
    end

    def fini
      __return_value = LibGio.static_resource_fini((to_unsafe as LibGio::StaticResource*))
      __return_value
    end

    def resource
      __return_value = LibGio.static_resource_get_resource((to_unsafe as LibGio::StaticResource*))
      Gio::Resource.new(__return_value)
    end

    def init
      __return_value = LibGio.static_resource_init((to_unsafe as LibGio::StaticResource*))
      __return_value
    end

  end
end

