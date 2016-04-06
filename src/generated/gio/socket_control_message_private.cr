module Gio
  class SocketControlMessagePrivate
    include GObject::WrappedType

    def initialize(@gio_socket_control_message_private)
    end

    def to_unsafe
      @gio_socket_control_message_private.not_nil!
    end

  end
end

