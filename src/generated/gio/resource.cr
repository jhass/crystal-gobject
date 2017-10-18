module Gio
  class Resource
    include GObject::WrappedType

    @gio_resource : LibGio::Resource*?
    def initialize(@gio_resource : LibGio::Resource*)
    end

    def to_unsafe
      @gio_resource.not_nil!
    end

    def self.new_from_data(data) : self
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.resource_new_from_data(data.to_unsafe.as(LibGLib::Bytes*), pointerof(__error))
      GLib::Error.assert __error
      cast Gio::Resource.new(__return_value)
    end

    def register
      LibGio.resource_register(to_unsafe.as(LibGio::Resource*))
      nil
    end

    def unregister
      LibGio.resource_unregister(to_unsafe.as(LibGio::Resource*))
      nil
    end

    def enumerate_children(path, lookup_flags : Gio::ResourceLookupFlags)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.resource_enumerate_children(to_unsafe.as(LibGio::Resource*), path.to_unsafe, lookup_flags, pointerof(__error))
      GLib::Error.assert __error
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def info(path, lookup_flags : Gio::ResourceLookupFlags, size, flags)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.resource_get_info(to_unsafe.as(LibGio::Resource*), path.to_unsafe, lookup_flags, size, flags, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def lookup_data(path, lookup_flags : Gio::ResourceLookupFlags)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.resource_lookup_data(to_unsafe.as(LibGio::Resource*), path.to_unsafe, lookup_flags, pointerof(__error))
      GLib::Error.assert __error
      GLib::Bytes.new(__return_value)
    end

    def open_stream(path, lookup_flags : Gio::ResourceLookupFlags)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.resource_open_stream(to_unsafe.as(LibGio::Resource*), path.to_unsafe, lookup_flags, pointerof(__error))
      GLib::Error.assert __error
      Gio::InputStream.new(__return_value)
    end

    def ref
      __return_value = LibGio.resource_ref(to_unsafe.as(LibGio::Resource*))
      Gio::Resource.new(__return_value)
    end

    def unref
      LibGio.resource_unref(to_unsafe.as(LibGio::Resource*))
      nil
    end

    def self.load(filename)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.resource_load(filename.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      Gio::Resource.new(__return_value)
    end

  end
end

