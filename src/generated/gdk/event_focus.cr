module Gdk
  class EventFocus
    include GObject::WrappedType

    def self.new(type : Gdk::EventType|Nil = nil, window : Gdk::Window|Nil = nil, send_event : Int8|Nil = nil, in : Int16|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(24, 0u8)
      new(ptr.as(LibGdk::EventFocus*)).tap do |object|
        object.type = type unless type.nil?
        object.window = window unless window.nil?
        object.send_event = send_event unless send_event.nil?
        object.in = in unless in.nil?
      end
    end

    @gdk_event_focus : LibGdk::EventFocus*?
    def initialize(@gdk_event_focus : LibGdk::EventFocus*)
    end

    def to_unsafe
      @gdk_event_focus.not_nil!.as(Void*)
    end

    def type
      (to_unsafe.value.type)
    end

    def type=(value : Gdk::EventType)
      to_unsafe.value.type = value
    end

    def window
      Gdk::Window.new((to_unsafe.value.window))
    end

    def window=(value : Gdk::Window)
      to_unsafe.value.window = value.to_unsafe.as(LibGdk::Window*)
    end

    def send_event
      (to_unsafe.value.send_event)
    end

    def send_event=(value : Int8)
      to_unsafe.value.send_event = Int8.new(value)
    end

    def in
      (to_unsafe.value.in)
    end

    def in=(value : Int16)
      to_unsafe.value.in = Int16.new(value)
    end

  end
end

