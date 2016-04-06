module Gio
  class InetAddressMaskPrivate
    include GObject::WrappedType

    def initialize(@gio_inet_address_mask_private)
    end

    def to_unsafe
      @gio_inet_address_mask_private.not_nil!
    end

  end
end

