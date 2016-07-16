module Gio
  class InputMessage
    include GObject::WrappedType

    def self.new(address : Gio::SocketAddress|Nil = nil, vectors : Array(Gio::InputVector)|Nil = nil, num_vectors : UInt32|Nil = nil, bytes_received : UInt64|Nil = nil, flags : Int32|Nil = nil, control_messages : Array(Gio::SocketControlMessage)|Nil = nil, num_control_messages : UInt32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(56, 0u8)
      new(ptr.as(LibGio::InputMessage*)).tap do |object|
        object.address = address unless address.nil?
        object.vectors = vectors unless vectors.nil?
        object.num_vectors = num_vectors unless num_vectors.nil?
        object.bytes_received = bytes_received unless bytes_received.nil?
        object.flags = flags unless flags.nil?
        object.control_messages = control_messages unless control_messages.nil?
        object.num_control_messages = num_control_messages unless num_control_messages.nil?
      end
    end

    @gio_input_message : LibGio::InputMessage*?
    def initialize(@gio_input_message : LibGio::InputMessage*)
    end

    def to_unsafe
      @gio_input_message.not_nil!
    end

    def address
      Gio::SocketAddress.new((to_unsafe.value.address))
    end

    def address=(value : Gio::SocketAddress)
      to_unsafe.value.address = value.to_unsafe.as(LibGio::SocketAddress*)
    end

    def vectors
      PointerIterator.new((to_unsafe.value.vectors)) {|__item| Gio::InputVector.new(__item) }
    end

    def vectors=(value : Array(Gio::InputVector))
      to_unsafe.value.vectors = value
    end

    def num_vectors
      (to_unsafe.value.num_vectors)
    end

    def num_vectors=(value : UInt32)
      to_unsafe.value.num_vectors = UInt32.new(value)
    end

    def bytes_received
      (to_unsafe.value.bytes_received)
    end

    def bytes_received=(value : UInt64)
      to_unsafe.value.bytes_received = UInt64.new(value)
    end

    def flags
      (to_unsafe.value.flags)
    end

    def flags=(value : Int32)
      to_unsafe.value.flags = Int32.new(value)
    end

    def control_messages
      PointerIterator.new((to_unsafe.value.control_messages)) {|__item| Gio::SocketControlMessage.new(__item) }
    end

    def control_messages=(value : Array(Gio::SocketControlMessage))
      to_unsafe.value.control_messages = value
    end

    def num_control_messages
      (to_unsafe.value.num_control_messages)
    end

    def num_control_messages=(value : UInt32)
      to_unsafe.value.num_control_messages = value
    end

  end
end

