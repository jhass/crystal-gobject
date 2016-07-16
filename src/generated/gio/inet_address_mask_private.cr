module Gio
  class InetAddressMaskPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::InetAddressMaskPrivate*))
    end

    @gio_inet_address_mask_private : LibGio::InetAddressMaskPrivate*?
    def initialize(@gio_inet_address_mask_private : LibGio::InetAddressMaskPrivate*)
    end

    def to_unsafe
      @gio_inet_address_mask_private.not_nil!.as(Void*)
    end

  end
end

