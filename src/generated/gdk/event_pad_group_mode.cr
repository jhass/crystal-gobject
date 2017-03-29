module Gdk
  class EventPadGroupMode
    include GObject::WrappedType

    def self.new(type : Gdk::EventType|Nil = nil, window : Gdk::Window|Nil = nil, send_event : Int8|Nil = nil, time : UInt32|Nil = nil, group : UInt32|Nil = nil, mode : UInt32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(32, 0u8)
      new(ptr.as(LibGdk::EventPadGroupMode*)).tap do |object|
        object.type = type unless type.nil?
        object.window = window unless window.nil?
        object.send_event = send_event unless send_event.nil?
        object.time = time unless time.nil?
        object.group = group unless group.nil?
        object.mode = mode unless mode.nil?
      end
    end

    @gdk_event_pad_group_mode : LibGdk::EventPadGroupMode*?
    def initialize(@gdk_event_pad_group_mode : LibGdk::EventPadGroupMode*)
    end

    def to_unsafe
      @gdk_event_pad_group_mode.not_nil!
    end

    def type
      (to_unsafe.as(LibGdk::EventPadGroupMode*).value.type)
    end

    def type=(value : Gdk::EventType)
      to_unsafe.as(LibGdk::EventPadGroupMode*).value.type = value
    end

    def window
      Gdk::Window.new((to_unsafe.as(LibGdk::EventPadGroupMode*).value.window))
    end

    def window=(value : Gdk::Window)
      to_unsafe.as(LibGdk::EventPadGroupMode*).value.window = value.to_unsafe.as(LibGdk::Window*)
    end

    def send_event
      (to_unsafe.as(LibGdk::EventPadGroupMode*).value.send_event)
    end

    def send_event=(value : Int8)
      to_unsafe.as(LibGdk::EventPadGroupMode*).value.send_event = Int8.new(value)
    end

    def time
      (to_unsafe.as(LibGdk::EventPadGroupMode*).value.time)
    end

    def time=(value : UInt32)
      to_unsafe.as(LibGdk::EventPadGroupMode*).value.time = UInt32.new(value)
    end

    def group
      (to_unsafe.as(LibGdk::EventPadGroupMode*).value.group)
    end

    def group=(value : UInt32)
      to_unsafe.as(LibGdk::EventPadGroupMode*).value.group = UInt32.new(value)
    end

    def mode
      (to_unsafe.as(LibGdk::EventPadGroupMode*).value.mode)
    end

    def mode=(value : UInt32)
      to_unsafe.as(LibGdk::EventPadGroupMode*).value.mode = UInt32.new(value)
    end

  end
end

