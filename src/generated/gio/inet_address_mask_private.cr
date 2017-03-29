module Gio
  class InetAddressMaskPrivate
    include GObject::WrappedType

    @gio_inet_address_mask_private : LibGio::InetAddressMaskPrivate*?
    def initialize(@gio_inet_address_mask_private : LibGio::InetAddressMaskPrivate*)
    end

    def to_unsafe
      @gio_inet_address_mask_private.not_nil!
    end

  end
end

