module Gdk
  class EventVisibility
    include GObject::WrappedType

    def self.new(type : Gdk::EventType|Nil = nil, window : Gdk::Window|Nil = nil, send_event : Int8|Nil = nil, state : Gdk::VisibilityState|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(24, 0u8)
      new(ptr.as(LibGdk::EventVisibility*)).tap do |object|
        object.type = type unless type.nil?
        object.window = window unless window.nil?
        object.send_event = send_event unless send_event.nil?
        object.state = state unless state.nil?
      end
    end

    @gdk_event_visibility : LibGdk::EventVisibility*?
    def initialize(@gdk_event_visibility : LibGdk::EventVisibility*)
    end

    def to_unsafe
      @gdk_event_visibility.not_nil!.as(Void*)
    end

    def type
      (to_unsafe.as(LibGdk::EventVisibility*).value.type)
    end

    def type=(value : Gdk::EventType)
      to_unsafe.as(LibGdk::EventVisibility*).value.type = value
    end

    def window
      Gdk::Window.new((to_unsafe.as(LibGdk::EventVisibility*).value.window))
    end

    def window=(value : Gdk::Window)
      to_unsafe.as(LibGdk::EventVisibility*).value.window = value.to_unsafe.as(LibGdk::Window*)
    end

    def send_event
      (to_unsafe.as(LibGdk::EventVisibility*).value.send_event)
    end

    def send_event=(value : Int8)
      to_unsafe.as(LibGdk::EventVisibility*).value.send_event = Int8.new(value)
    end

    def state
      (to_unsafe.as(LibGdk::EventVisibility*).value.state)
    end

    def state=(value : Gdk::VisibilityState)
      to_unsafe.as(LibGdk::EventVisibility*).value.state = value
    end

  end
end

