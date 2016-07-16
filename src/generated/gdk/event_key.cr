module Gdk
  class EventKey
    include GObject::WrappedType

    def self.new(type : Gdk::EventType|Nil = nil, window : Gdk::Window|Nil = nil, send_event : Int8|Nil = nil, time : UInt32|Nil = nil, state : Gdk::ModifierType|Nil = nil, keyval : UInt32|Nil = nil, length : Int32|Nil = nil, string : String|Nil = nil, hardware_keycode : UInt16|Nil = nil, group : UInt8|Nil = nil, is_modifier : UInt32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(56, 0u8)
      new(ptr.as(LibGdk::EventKey*)).tap do |object|
        object.type = type unless type.nil?
        object.window = window unless window.nil?
        object.send_event = send_event unless send_event.nil?
        object.time = time unless time.nil?
        object.state = state unless state.nil?
        object.keyval = keyval unless keyval.nil?
        object.length = length unless length.nil?
        object.string = string unless string.nil?
        object.hardware_keycode = hardware_keycode unless hardware_keycode.nil?
        object.group = group unless group.nil?
        object.is_modifier = is_modifier unless is_modifier.nil?
      end
    end

    @gdk_event_key : LibGdk::EventKey*?
    def initialize(@gdk_event_key : LibGdk::EventKey*)
    end

    def to_unsafe
      @gdk_event_key.not_nil!.as(Void*)
    end

    def type
      (to_unsafe.as(LibGdk::EventKey*).value.type)
    end

    def type=(value : Gdk::EventType)
      to_unsafe.as(LibGdk::EventKey*).value.type = value
    end

    def window
      Gdk::Window.new((to_unsafe.as(LibGdk::EventKey*).value.window))
    end

    def window=(value : Gdk::Window)
      to_unsafe.as(LibGdk::EventKey*).value.window = value.to_unsafe.as(LibGdk::Window*)
    end

    def send_event
      (to_unsafe.as(LibGdk::EventKey*).value.send_event)
    end

    def send_event=(value : Int8)
      to_unsafe.as(LibGdk::EventKey*).value.send_event = Int8.new(value)
    end

    def time
      (to_unsafe.as(LibGdk::EventKey*).value.time)
    end

    def time=(value : UInt32)
      to_unsafe.as(LibGdk::EventKey*).value.time = UInt32.new(value)
    end

    def state
      (to_unsafe.as(LibGdk::EventKey*).value.state)
    end

    def state=(value : Gdk::ModifierType)
      to_unsafe.as(LibGdk::EventKey*).value.state = value
    end

    def keyval
      (to_unsafe.as(LibGdk::EventKey*).value.keyval)
    end

    def keyval=(value : UInt32)
      to_unsafe.as(LibGdk::EventKey*).value.keyval = UInt32.new(value)
    end

    def length
      (to_unsafe.as(LibGdk::EventKey*).value.length)
    end

    def length=(value : Int32)
      to_unsafe.as(LibGdk::EventKey*).value.length = Int32.new(value)
    end

    def string
      (raise "Expected string but got null" unless (to_unsafe.as(LibGdk::EventKey*).value.string); ::String.new((to_unsafe.as(LibGdk::EventKey*).value.string)))
    end

    def string=(value : String)
      to_unsafe.as(LibGdk::EventKey*).value.string = value.to_unsafe
    end

    def hardware_keycode
      (to_unsafe.as(LibGdk::EventKey*).value.hardware_keycode)
    end

    def hardware_keycode=(value : UInt16)
      to_unsafe.as(LibGdk::EventKey*).value.hardware_keycode = UInt16.new(value)
    end

    def group
      (to_unsafe.as(LibGdk::EventKey*).value.group)
    end

    def group=(value : UInt8)
      to_unsafe.as(LibGdk::EventKey*).value.group = UInt8.new(value)
    end

    def is_modifier
      (to_unsafe.as(LibGdk::EventKey*).value.is_modifier)
    end

    def is_modifier=(value : UInt32)
      to_unsafe.as(LibGdk::EventKey*).value.is_modifier = UInt32.new(value)
    end

  end
end

