module Gio
  class Resource
    include GObject::WrappedType

    def initialize @gio_resource
    end

    def to_unsafe
      @gio_resource.not_nil!
    end

    def self.new_from_data(data)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.resource_new_from_data((data.to_unsafe as LibGLib::Bytes*), pointerof(__error))
      GLib::Error.assert __error
      Gio::Resource.new(__return_value)
    end

    def _register
      __return_value = LibGio.resource__register((to_unsafe as LibGio::Resource*))
      __return_value
    end

    def _unregister
      __return_value = LibGio.resource__unregister((to_unsafe as LibGio::Resource*))
      __return_value
    end

    def enumerate_children(path, lookup_flags)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.resource_enumerate_children((to_unsafe as LibGio::Resource*), path, lookup_flags, pointerof(__error))
      GLib::Error.assert __error
      PointerIterator.new(__return_value) {|__item_11| (raise "Expected string but got null" unless __item_11; String.new(__item_11)) }
    end

    def info(path, lookup_flags, size, flags)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.resource_get_info((to_unsafe as LibGio::Resource*), path, lookup_flags, UInt64.new(size), UInt32.new(flags), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def lookup_data(path, lookup_flags)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.resource_lookup_data((to_unsafe as LibGio::Resource*), path, lookup_flags, pointerof(__error))
      GLib::Error.assert __error
      GLib::Bytes.new(__return_value)
    end

    def open_stream(path, lookup_flags)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.resource_open_stream((to_unsafe as LibGio::Resource*), path, lookup_flags, pointerof(__error))
      GLib::Error.assert __error
      Gio::InputStream.new(__return_value)
    end

    def ref
      __return_value = LibGio.resource_ref((to_unsafe as LibGio::Resource*))
      Gio::Resource.new(__return_value)
    end

    def unref
      __return_value = LibGio.resource_unref((to_unsafe as LibGio::Resource*))
      __return_value
    end

    def self.load(filename)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.resource_load(filename, pointerof(__error))
      GLib::Error.assert __error
      Gio::Resource.new(__return_value)
    end

  end
end

