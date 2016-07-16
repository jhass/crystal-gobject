module Gdk
  class EventScroll
    include GObject::WrappedType

    def self.new(type : Gdk::EventType|Nil = nil, window : Gdk::Window|Nil = nil, send_event : Int8|Nil = nil, time : UInt32|Nil = nil, x : Float64|Nil = nil, y : Float64|Nil = nil, state : Gdk::ModifierType|Nil = nil, direction : Gdk::ScrollDirection|Nil = nil, device : Gdk::Device|Nil = nil, x_root : Float64|Nil = nil, y_root : Float64|Nil = nil, delta_x : Float64|Nil = nil, delta_y : Float64|Nil = nil, is_stop : UInt32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(96, 0u8)
      new(ptr.as(LibGdk::EventScroll*)).tap do |object|
        object.type = type unless type.nil?
        object.window = window unless window.nil?
        object.send_event = send_event unless send_event.nil?
        object.time = time unless time.nil?
        object.x = x unless x.nil?
        object.y = y unless y.nil?
        object.state = state unless state.nil?
        object.direction = direction unless direction.nil?
        object.device = device unless device.nil?
        object.x_root = x_root unless x_root.nil?
        object.y_root = y_root unless y_root.nil?
        object.delta_x = delta_x unless delta_x.nil?
        object.delta_y = delta_y unless delta_y.nil?
        object.is_stop = is_stop unless is_stop.nil?
      end
    end

    @gdk_event_scroll : LibGdk::EventScroll*?
    def initialize(@gdk_event_scroll : LibGdk::EventScroll*)
    end

    def to_unsafe
      @gdk_event_scroll.not_nil!.as(Void*)
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

    def time
      (to_unsafe.value.time)
    end

    def time=(value : UInt32)
      to_unsafe.value.time = UInt32.new(value)
    end

    def x
      (to_unsafe.value.x)
    end

    def x=(value : Float64)
      to_unsafe.value.x = Float64.new(value)
    end

    def y
      (to_unsafe.value.y)
    end

    def y=(value : Float64)
      to_unsafe.value.y = Float64.new(value)
    end

    def state
      (to_unsafe.value.state)
    end

    def state=(value : Gdk::ModifierType)
      to_unsafe.value.state = value
    end

    def direction
      (to_unsafe.value.direction)
    end

    def direction=(value : Gdk::ScrollDirection)
      to_unsafe.value.direction = value
    end

    def device
      Gdk::Device.new((to_unsafe.value.device))
    end

    def device=(value : Gdk::Device)
      to_unsafe.value.device = value.to_unsafe.as(LibGdk::Device*)
    end

    def x_root
      (to_unsafe.value.x_root)
    end

    def x_root=(value : Float64)
      to_unsafe.value.x_root = Float64.new(value)
    end

    def y_root
      (to_unsafe.value.y_root)
    end

    def y_root=(value : Float64)
      to_unsafe.value.y_root = Float64.new(value)
    end

    def delta_x
      (to_unsafe.value.delta_x)
    end

    def delta_x=(value : Float64)
      to_unsafe.value.delta_x = Float64.new(value)
    end

    def delta_y
      (to_unsafe.value.delta_y)
    end

    def delta_y=(value : Float64)
      to_unsafe.value.delta_y = Float64.new(value)
    end

    def is_stop
      (to_unsafe.value.is_stop)
    end

    def is_stop=(value : UInt32)
      to_unsafe.value.is_stop = UInt32.new(value)
    end

  end
end

