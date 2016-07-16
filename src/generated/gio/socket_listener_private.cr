module Gio
  class SocketListenerPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::SocketListenerPrivate*))
    end

    @gio_socket_listener_private : LibGio::SocketListenerPrivate*?
    def initialize(@gio_socket_listener_private : LibGio::SocketListenerPrivate*)
    end

    def to_unsafe
      @gio_socket_listener_private.not_nil!
    end

  end
end

