module Gio
  class BytesIcon < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::BytesIcon*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::BytesIcon*)
    end

    # Implements Icon
    # Implements LoadableIcon
    def bytes
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "bytes", gvalue)
      GLib::Bytes.cast(gvalue.object)
    end

    def self.new(bytes) : self
      __return_value = LibGio.bytes_icon_new(bytes.to_unsafe.as(LibGLib::Bytes*))
      cast Gio::BytesIcon.new(__return_value)
    end

    def bytes
      __return_value = LibGio.bytes_icon_get_bytes(@pointer.as(LibGio::BytesIcon*))
      GLib::Bytes.new(__return_value)
    end

  end
end

