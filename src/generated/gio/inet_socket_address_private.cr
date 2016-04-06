module Gio
  class InetSocketAddressPrivate
    include GObject::WrappedType

    def initialize(@gio_inet_socket_address_private)
    end

    def to_unsafe
      @gio_inet_socket_address_private.not_nil!
    end

  end
end

