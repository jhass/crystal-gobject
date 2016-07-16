module Gio
  class InetAddressPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::InetAddressPrivate*))
    end

    @gio_inet_address_private : LibGio::InetAddressPrivate*?
    def initialize(@gio_inet_address_private : LibGio::InetAddressPrivate*)
    end

    def to_unsafe
      @gio_inet_address_private.not_nil!
    end

  end
end

