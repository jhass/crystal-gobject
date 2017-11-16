module Gio
  class SocketControlMessage < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::SocketControlMessage*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::SocketControlMessage*)
    end

    def self.deserialize(level, type, size, data)
      __return_value = LibGio.socket_control_message_deserialize(Int32.new(level), Int32.new(type), UInt64.new(size), data)
      Gio::SocketControlMessage.new(__return_value)
    end

    def level
      __return_value = LibGio.socket_control_message_get_level(@pointer.as(LibGio::SocketControlMessage*))
      __return_value
    end

    def msg_type
      __return_value = LibGio.socket_control_message_get_msg_type(@pointer.as(LibGio::SocketControlMessage*))
      __return_value
    end

    def size
      __return_value = LibGio.socket_control_message_get_size(@pointer.as(LibGio::SocketControlMessage*))
      __return_value
    end

    def serialize(data)
      LibGio.socket_control_message_serialize(@pointer.as(LibGio::SocketControlMessage*), data)
      nil
    end

  end
end

