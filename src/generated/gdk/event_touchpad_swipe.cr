module Gdk
  class EventTouchpadSwipe
    include GObject::WrappedType

    def self.new(type : Gdk::EventType|Nil = nil, window : Gdk::Window|Nil = nil, send_event : Int8|Nil = nil, phase : Gdk::TouchpadGesturePhase|Nil = nil, n_fingers : Int8|Nil = nil, time : UInt32|Nil = nil, x : Float64|Nil = nil, y : Float64|Nil = nil, dx : Float64|Nil = nil, dy : Float64|Nil = nil, x_root : Float64|Nil = nil, y_root : Float64|Nil = nil, state : Gdk::ModifierType|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(88, 0u8)
      new(ptr.as(LibGdk::EventTouchpadSwipe*)).tap do |object|
        object.type = type unless type.nil?
        object.window = window unless window.nil?
        object.send_event = send_event unless send_event.nil?
        object.phase = phase unless phase.nil?
        object.n_fingers = n_fingers unless n_fingers.nil?
        object.time = time unless time.nil?
        object.x = x unless x.nil?
        object.y = y unless y.nil?
        object.dx = dx unless dx.nil?
        object.dy = dy unless dy.nil?
        object.x_root = x_root unless x_root.nil?
        object.y_root = y_root unless y_root.nil?
        object.state = state unless state.nil?
      end
    end

    @gdk_event_touchpad_swipe : LibGdk::EventTouchpadSwipe*?
    def initialize(@gdk_event_touchpad_swipe : LibGdk::EventTouchpadSwipe*)
    end

    def to_unsafe
      @gdk_event_touchpad_swipe.not_nil!.as(Void*)
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

    def phase
      (to_unsafe.value.phase)
    end

    def phase=(value : Gdk::TouchpadGesturePhase)
      to_unsafe.value.phase = value
    end

    def n_fingers
      (to_unsafe.value.n_fingers)
    end

    def n_fingers=(value : Int8)
      to_unsafe.value.n_fingers = Int8.new(value)
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

    def dx
      (to_unsafe.value.dx)
    end

    def dx=(value : Float64)
      to_unsafe.value.dx = Float64.new(value)
    end

    def dy
      (to_unsafe.value.dy)
    end

    def dy=(value : Float64)
      to_unsafe.value.dy = Float64.new(value)
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

    def state
      (to_unsafe.value.state)
    end

    def state=(value : Gdk::ModifierType)
      to_unsafe.value.state = value
    end

  end
end

