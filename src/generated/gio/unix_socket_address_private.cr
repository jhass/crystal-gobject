module Gio
  class UnixSocketAddressPrivate
    include GObject::WrappedType

    def initialize(@gio_unix_socket_address_private)
    end

    def to_unsafe
      @gio_unix_socket_address_private.not_nil!
    end

  end
end

