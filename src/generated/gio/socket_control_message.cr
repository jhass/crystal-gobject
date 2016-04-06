module Gio
  class SocketControlMessage < GObject::Object
    def initialize(@gio_socket_control_message)
    end

    def to_unsafe
      @gio_socket_control_message.not_nil!
    end

    def self.deserialize(level, type, size, data)
      __return_value = LibGio.socket_control_message_deserialize(Int32.new(level), Int32.new(type), UInt64.new(size), data)
      Gio::SocketControlMessage.new(__return_value)
    end

    def level
      __return_value = LibGio.socket_control_message_get_level((to_unsafe as LibGio::SocketControlMessage*))
      __return_value
    end

    def msg_type
      __return_value = LibGio.socket_control_message_get_msg_type((to_unsafe as LibGio::SocketControlMessage*))
      __return_value
    end

    def size
      __return_value = LibGio.socket_control_message_get_size((to_unsafe as LibGio::SocketControlMessage*))
      __return_value
    end

    def serialize(data)
      __return_value = LibGio.socket_control_message_serialize((to_unsafe as LibGio::SocketControlMessage*), data)
      __return_value
    end

  end
end

