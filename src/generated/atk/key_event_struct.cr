module Atk
  class KeyEventStruct
    include GObject::WrappedType

    def self.new(type : Int32|Nil = nil, state : UInt32|Nil = nil, keyval : UInt32|Nil = nil, length : Int32|Nil = nil, string : String|Nil = nil, keycode : UInt16|Nil = nil, timestamp : UInt32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(32, 0u8)
      new(ptr.as(LibAtk::KeyEventStruct*)).tap do |object|
        object.type = type unless type.nil?
        object.state = state unless state.nil?
        object.keyval = keyval unless keyval.nil?
        object.length = length unless length.nil?
        object.string = string unless string.nil?
        object.keycode = keycode unless keycode.nil?
        object.timestamp = timestamp unless timestamp.nil?
      end
    end

    @atk_key_event_struct : LibAtk::KeyEventStruct*?
    def initialize(@atk_key_event_struct : LibAtk::KeyEventStruct*)
    end

    def to_unsafe
      @atk_key_event_struct.not_nil!
    end

    def type
      (to_unsafe.value.type)
    end

    def type=(value : Int32)
      to_unsafe.value.type = Int32.new(value)
    end

    def state
      (to_unsafe.value.state)
    end

    def state=(value : UInt32)
      to_unsafe.value.state = UInt32.new(value)
    end

    def keyval
      (to_unsafe.value.keyval)
    end

    def keyval=(value : UInt32)
      to_unsafe.value.keyval = UInt32.new(value)
    end

    def length
      (to_unsafe.value.length)
    end

    def length=(value : Int32)
      to_unsafe.value.length = Int32.new(value)
    end

    def string
      (raise "Expected string but got null" unless (to_unsafe.value.string); ::String.new((to_unsafe.value.string)))
    end

    def string=(value : String)
      to_unsafe.value.string = value.to_unsafe
    end

    def keycode
      (to_unsafe.value.keycode)
    end

    def keycode=(value : UInt16)
      to_unsafe.value.keycode = UInt16.new(value)
    end

    def timestamp
      (to_unsafe.value.timestamp)
    end

    def timestamp=(value : UInt32)
      to_unsafe.value.timestamp = UInt32.new(value)
    end

  end
end

