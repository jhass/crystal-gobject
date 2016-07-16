module Gio
  class SocketControlMessagePrivate
    include GObject::WrappedType

    @gio_socket_control_message_private : LibGio::SocketControlMessagePrivate*?
    def initialize(@gio_socket_control_message_private : LibGio::SocketControlMessagePrivate*)
    end

    def to_unsafe
      @gio_socket_control_message_private.not_nil!.as(Void*)
    end

  end
end

