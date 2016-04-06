module Gio
  class InetAddressPrivate
    include GObject::WrappedType

    def initialize(@gio_inet_address_private)
    end

    def to_unsafe
      @gio_inet_address_private.not_nil!
    end

  end
end

