module Gdk
  class EventGrabBroken
    include GObject::WrappedType

    def self.new(type : Gdk::EventType|Nil = nil, window : Gdk::Window|Nil = nil, send_event : Int8|Nil = nil, keyboard : Bool|Nil = nil, implicit : Bool|Nil = nil, grab_window : Gdk::Window|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(40, 0u8)
      new(ptr.as(LibGdk::EventGrabBroken*)).tap do |object|
        object.type = type unless type.nil?
        object.window = window unless window.nil?
        object.send_event = send_event unless send_event.nil?
        object.keyboard = keyboard unless keyboard.nil?
        object.implicit = implicit unless implicit.nil?
        object.grab_window = grab_window unless grab_window.nil?
      end
    end

    @gdk_event_grab_broken : LibGdk::EventGrabBroken*?
    def initialize(@gdk_event_grab_broken : LibGdk::EventGrabBroken*)
    end

    def to_unsafe
      @gdk_event_grab_broken.not_nil!.as(Void*)
    end

    def type
      (to_unsafe.as(LibGdk::EventGrabBroken*).value.type)
    end

    def type=(value : Gdk::EventType)
      to_unsafe.as(LibGdk::EventGrabBroken*).value.type = value
    end

    def window
      Gdk::Window.new((to_unsafe.as(LibGdk::EventGrabBroken*).value.window))
    end

    def window=(value : Gdk::Window)
      to_unsafe.as(LibGdk::EventGrabBroken*).value.window = value.to_unsafe.as(LibGdk::Window*)
    end

    def send_event
      (to_unsafe.as(LibGdk::EventGrabBroken*).value.send_event)
    end

    def send_event=(value : Int8)
      to_unsafe.as(LibGdk::EventGrabBroken*).value.send_event = Int8.new(value)
    end

    def keyboard
      (to_unsafe.as(LibGdk::EventGrabBroken*).value.keyboard)
    end

    def keyboard=(value : Bool)
      to_unsafe.as(LibGdk::EventGrabBroken*).value.keyboard = value
    end

    def implicit
      (to_unsafe.as(LibGdk::EventGrabBroken*).value.implicit)
    end

    def implicit=(value : Bool)
      to_unsafe.as(LibGdk::EventGrabBroken*).value.implicit = value
    end

    def grab_window
      Gdk::Window.new((to_unsafe.as(LibGdk::EventGrabBroken*).value.grab_window))
    end

    def grab_window=(value : Gdk::Window)
      to_unsafe.as(LibGdk::EventGrabBroken*).value.grab_window = value.to_unsafe.as(LibGdk::Window*)
    end

  end
end

