module Gio
  class NetworkServicePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::NetworkServicePrivate*))
    end

    @gio_network_service_private : LibGio::NetworkServicePrivate*?
    def initialize(@gio_network_service_private : LibGio::NetworkServicePrivate*)
    end

    def to_unsafe
      @gio_network_service_private.not_nil!
    end

  end
end

