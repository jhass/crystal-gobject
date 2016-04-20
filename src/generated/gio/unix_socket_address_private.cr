module Gio
  class UnixSocketAddressPrivate
    include GObject::WrappedType

    @gio_unix_socket_address_private : LibGio::UnixSocketAddressPrivate*?
    def initialize(@gio_unix_socket_address_private : LibGio::UnixSocketAddressPrivate*)
    end

    def to_unsafe
      @gio_unix_socket_address_private.not_nil!
    end

  end
end

