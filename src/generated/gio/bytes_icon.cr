module Gio
  class BytesIcon < GObject::Object
    def initialize(@gio_bytes_icon)
    end

    def to_unsafe
      @gio_bytes_icon.not_nil!
    end

    # Implements Icon
    # Implements LoadableIcon

    def self.new_internal(bytes)
      __return_value = LibGio.bytes_icon_new((bytes.to_unsafe as LibGLib::Bytes*))
      Gio::BytesIcon.new(__return_value)
    end

    def bytes
      __return_value = LibGio.bytes_icon_get_bytes((to_unsafe as LibGio::BytesIcon*))
      GLib::Bytes.new(__return_value)
    end

  end
end

