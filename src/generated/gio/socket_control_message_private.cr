module Gio
  class SocketControlMessagePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::SocketControlMessagePrivate*))
    end

    @gio_socket_control_message_private : LibGio::SocketControlMessagePrivate*?
    def initialize(@gio_socket_control_message_private : LibGio::SocketControlMessagePrivate*)
    end

    def to_unsafe
      @gio_socket_control_message_private.not_nil!.as(Void*)
    end

  end
end

