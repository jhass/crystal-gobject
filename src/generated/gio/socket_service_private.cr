module Gio
  class SocketServicePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::SocketServicePrivate*))
    end

    @gio_socket_service_private : LibGio::SocketServicePrivate*?
    def initialize(@gio_socket_service_private : LibGio::SocketServicePrivate*)
    end

    def to_unsafe
      @gio_socket_service_private.not_nil!
    end

  end
end

