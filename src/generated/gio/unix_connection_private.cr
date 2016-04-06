module Gio
  class UnixConnectionPrivate
    include GObject::WrappedType

    def initialize(@gio_unix_connection_private)
    end

    def to_unsafe
      @gio_unix_connection_private.not_nil!
    end

  end
end

