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
      __return_value = LibGio.bytes_icon_get_bytes(to_unsafe.as(LibGio::BytesIcon*))
      GLib::Bytes.new(__return_value)
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

