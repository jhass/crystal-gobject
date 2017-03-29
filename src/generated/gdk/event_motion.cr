module Gdk
  class EventMotion
    include GObject::WrappedType

    def self.new(type : Gdk::EventType|Nil = nil, window : Gdk::Window|Nil = nil, send_event : Int8|Nil = nil, time : UInt32|Nil = nil, x : Float64|Nil = nil, y : Float64|Nil = nil, axes : Float64|Nil = nil, state : Gdk::ModifierType|Nil = nil, is_hint : Int16|Nil = nil, device : Gdk::Device|Nil = nil, x_root : Float64|Nil = nil, y_root : Float64|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(80, 0u8)
      new(ptr.as(LibGdk::EventMotion*)).tap do |object|
        object.type = type unless type.nil?
        object.window = window unless window.nil?
        object.send_event = send_event unless send_event.nil?
        object.time = time unless time.nil?
        object.x = x unless x.nil?
        object.y = y unless y.nil?
        object.axes = axes unless axes.nil?
        object.state = state unless state.nil?
        object.is_hint = is_hint unless is_hint.nil?
        object.device = device unless device.nil?
        object.x_root = x_root unless x_root.nil?
        object.y_root = y_root unless y_root.nil?
      end
    end

    @gdk_event_motion : LibGdk::EventMotion*?
    def initialize(@gdk_event_motion : LibGdk::EventMotion*)
    end

    def to_unsafe
      @gdk_event_motion.not_nil!
    end

    def type
      (to_unsafe.as(LibGdk::EventMotion*).value.type)
    end

    def type=(value : Gdk::EventType)
      to_unsafe.as(LibGdk::EventMotion*).value.type = value
    end

    def window
      Gdk::Window.new((to_unsafe.as(LibGdk::EventMotion*).value.window))
    end

    def window=(value : Gdk::Window)
      to_unsafe.as(LibGdk::EventMotion*).value.window = value.to_unsafe.as(LibGdk::Window*)
    end

    def send_event
      (to_unsafe.as(LibGdk::EventMotion*).value.send_event)
    end

    def send_event=(value : Int8)
      to_unsafe.as(LibGdk::EventMotion*).value.send_event = Int8.new(value)
    end

    def time
      (to_unsafe.as(LibGdk::EventMotion*).value.time)
    end

    def time=(value : UInt32)
      to_unsafe.as(LibGdk::EventMotion*).value.time = UInt32.new(value)
    end

    def x
      (to_unsafe.as(LibGdk::EventMotion*).value.x)
    end

    def x=(value : Float64)
      to_unsafe.as(LibGdk::EventMotion*).value.x = Float64.new(value)
    end

    def y
      (to_unsafe.as(LibGdk::EventMotion*).value.y)
    end

    def y=(value : Float64)
      to_unsafe.as(LibGdk::EventMotion*).value.y = Float64.new(value)
    end

    def axes
      (to_unsafe.as(LibGdk::EventMotion*).value.axes)
    end

    def axes=(value : Float64)
      to_unsafe.as(LibGdk::EventMotion*).value.axes = value
    end

    def state
      (to_unsafe.as(LibGdk::EventMotion*).value.state)
    end

    def state=(value : Gdk::ModifierType)
      to_unsafe.as(LibGdk::EventMotion*).value.state = value
    end

    def is_hint
      (to_unsafe.as(LibGdk::EventMotion*).value.is_hint)
    end

    def is_hint=(value : Int16)
      to_unsafe.as(LibGdk::EventMotion*).value.is_hint = Int16.new(value)
    end

    def device
      Gdk::Device.new((to_unsafe.as(LibGdk::EventMotion*).value.device))
    end

    def device=(value : Gdk::Device)
      to_unsafe.as(LibGdk::EventMotion*).value.device = value.to_unsafe.as(LibGdk::Device*)
    end

    def x_root
      (to_unsafe.as(LibGdk::EventMotion*).value.x_root)
    end

    def x_root=(value : Float64)
      to_unsafe.as(LibGdk::EventMotion*).value.x_root = Float64.new(value)
    end

    def y_root
      (to_unsafe.as(LibGdk::EventMotion*).value.y_root)
    end

    def y_root=(value : Float64)
      to_unsafe.as(LibGdk::EventMotion*).value.y_root = Float64.new(value)
    end

  end
end

