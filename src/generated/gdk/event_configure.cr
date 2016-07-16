module Gdk
  class EventConfigure
    include GObject::WrappedType

    def self.new(type : Gdk::EventType|Nil = nil, window : Gdk::Window|Nil = nil, send_event : Int8|Nil = nil, x : Int32|Nil = nil, y : Int32|Nil = nil, width : Int32|Nil = nil, height : Int32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(40, 0u8)
      new(ptr.as(LibGdk::EventConfigure*)).tap do |object|
        object.type = type unless type.nil?
        object.window = window unless window.nil?
        object.send_event = send_event unless send_event.nil?
        object.x = x unless x.nil?
        object.y = y unless y.nil?
        object.width = width unless width.nil?
        object.height = height unless height.nil?
      end
    end

    @gdk_event_configure : LibGdk::EventConfigure*?
    def initialize(@gdk_event_configure : LibGdk::EventConfigure*)
    end

    def to_unsafe
      @gdk_event_configure.not_nil!.as(Void*)
    end

    def type
      (to_unsafe.as(LibGdk::EventConfigure*).value.type)
    end

    def type=(value : Gdk::EventType)
      to_unsafe.as(LibGdk::EventConfigure*).value.type = value
    end

    def window
      Gdk::Window.new((to_unsafe.as(LibGdk::EventConfigure*).value.window))
    end

    def window=(value : Gdk::Window)
      to_unsafe.as(LibGdk::EventConfigure*).value.window = value.to_unsafe.as(LibGdk::Window*)
    end

    def send_event
      (to_unsafe.as(LibGdk::EventConfigure*).value.send_event)
    end

    def send_event=(value : Int8)
      to_unsafe.as(LibGdk::EventConfigure*).value.send_event = Int8.new(value)
    end

    def x
      (to_unsafe.as(LibGdk::EventConfigure*).value.x)
    end

    def x=(value : Int32)
      to_unsafe.as(LibGdk::EventConfigure*).value.x = Int32.new(value)
    end

    def y
      (to_unsafe.as(LibGdk::EventConfigure*).value.y)
    end

    def y=(value : Int32)
      to_unsafe.as(LibGdk::EventConfigure*).value.y = Int32.new(value)
    end

    def width
      (to_unsafe.as(LibGdk::EventConfigure*).value.width)
    end

    def width=(value : Int32)
      to_unsafe.as(LibGdk::EventConfigure*).value.width = Int32.new(value)
    end

    def height
      (to_unsafe.as(LibGdk::EventConfigure*).value.height)
    end

    def height=(value : Int32)
      to_unsafe.as(LibGdk::EventConfigure*).value.height = Int32.new(value)
    end

  end
end

