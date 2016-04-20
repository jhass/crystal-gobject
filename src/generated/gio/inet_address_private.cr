module Gio
  class InetAddressPrivate
    include GObject::WrappedType

    @gio_inet_address_private : LibGio::InetAddressPrivate*?
    def initialize(@gio_inet_address_private : LibGio::InetAddressPrivate*)
    end

    def to_unsafe
      @gio_inet_address_private.not_nil!
    end

  end
end

