module Gdk
  class EventWindowState
    include GObject::WrappedType

    def self.new(type : Gdk::EventType|Nil = nil, window : Gdk::Window|Nil = nil, send_event : Int8|Nil = nil, changed_mask : Gdk::WindowState|Nil = nil, new_window_state : Gdk::WindowState|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(32, 0u8)
      new(ptr.as(LibGdk::EventWindowState*)).tap do |object|
        object.type = type unless type.nil?
        object.window = window unless window.nil?
        object.send_event = send_event unless send_event.nil?
        object.changed_mask = changed_mask unless changed_mask.nil?
        object.new_window_state = new_window_state unless new_window_state.nil?
      end
    end

    @gdk_event_window_state : LibGdk::EventWindowState*?
    def initialize(@gdk_event_window_state : LibGdk::EventWindowState*)
    end

    def to_unsafe
      @gdk_event_window_state.not_nil!.as(Void*)
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

    def changed_mask
      (to_unsafe.value.changed_mask)
    end

    def changed_mask=(value : Gdk::WindowState)
      to_unsafe.value.changed_mask = value
    end

    def new_window_state
      (to_unsafe.value.new_window_state)
    end

    def new_window_state=(value : Gdk::WindowState)
      to_unsafe.value.new_window_state = value
    end

  end
end

