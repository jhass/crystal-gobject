module Gdk
  class EventTouchpadPinch
    include GObject::WrappedType

    def self.new(type : Gdk::EventType|Nil = nil, window : Gdk::Window|Nil = nil, send_event : Int8|Nil = nil, phase : Int8|Nil = nil, n_fingers : Int8|Nil = nil, time : UInt32|Nil = nil, x : Float64|Nil = nil, y : Float64|Nil = nil, dx : Float64|Nil = nil, dy : Float64|Nil = nil, angle_delta : Float64|Nil = nil, scale : Float64|Nil = nil, x_root : Float64|Nil = nil, y_root : Float64|Nil = nil, state : Gdk::ModifierType|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(96, 0u8)
      new(ptr.as(LibGdk::EventTouchpadPinch*)).tap do |object|
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
        object.angle_delta = angle_delta unless angle_delta.nil?
        object.scale = scale unless scale.nil?
        object.x_root = x_root unless x_root.nil?
        object.y_root = y_root unless y_root.nil?
        object.state = state unless state.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibGdk::EventTouchpadPinch*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGdk::EventTouchpadPinch*)
    end

    def type
      (to_unsafe.as(LibGdk::EventTouchpadPinch*).value.type)
    end

    def type=(value : Gdk::EventType)
      to_unsafe.as(LibGdk::EventTouchpadPinch*).value.type = value
    end

    def window
      Gdk::Window.new((to_unsafe.as(LibGdk::EventTouchpadPinch*).value.window))
    end

    def window=(value : Gdk::Window)
      to_unsafe.as(LibGdk::EventTouchpadPinch*).value.window = value.to_unsafe.as(LibGdk::Window*)
    end

    def send_event
      (to_unsafe.as(LibGdk::EventTouchpadPinch*).value.send_event)
    end

    def send_event=(value : Int8)
      to_unsafe.as(LibGdk::EventTouchpadPinch*).value.send_event = Int8.new(value)
    end

    def phase
      (to_unsafe.as(LibGdk::EventTouchpadPinch*).value.phase)
    end

    def phase=(value : Int8)
      to_unsafe.as(LibGdk::EventTouchpadPinch*).value.phase = Int8.new(value)
    end

    def n_fingers
      (to_unsafe.as(LibGdk::EventTouchpadPinch*).value.n_fingers)
    end

    def n_fingers=(value : Int8)
      to_unsafe.as(LibGdk::EventTouchpadPinch*).value.n_fingers = Int8.new(value)
    end

    def time
      (to_unsafe.as(LibGdk::EventTouchpadPinch*).value.time)
    end

    def time=(value : UInt32)
      to_unsafe.as(LibGdk::EventTouchpadPinch*).value.time = UInt32.new(value)
    end

    def x
      (to_unsafe.as(LibGdk::EventTouchpadPinch*).value.x)
    end

    def x=(value : Float64)
      to_unsafe.as(LibGdk::EventTouchpadPinch*).value.x = Float64.new(value)
    end

    def y
      (to_unsafe.as(LibGdk::EventTouchpadPinch*).value.y)
    end

    def y=(value : Float64)
      to_unsafe.as(LibGdk::EventTouchpadPinch*).value.y = Float64.new(value)
    end

    def dx
      (to_unsafe.as(LibGdk::EventTouchpadPinch*).value.dx)
    end

    def dx=(value : Float64)
      to_unsafe.as(LibGdk::EventTouchpadPinch*).value.dx = Float64.new(value)
    end

    def dy
      (to_unsafe.as(LibGdk::EventTouchpadPinch*).value.dy)
    end

    def dy=(value : Float64)
      to_unsafe.as(LibGdk::EventTouchpadPinch*).value.dy = Float64.new(value)
    end

    def angle_delta
      (to_unsafe.as(LibGdk::EventTouchpadPinch*).value.angle_delta)
    end

    def angle_delta=(value : Float64)
      to_unsafe.as(LibGdk::EventTouchpadPinch*).value.angle_delta = Float64.new(value)
    end

    def scale
      (to_unsafe.as(LibGdk::EventTouchpadPinch*).value.scale)
    end

    def scale=(value : Float64)
      to_unsafe.as(LibGdk::EventTouchpadPinch*).value.scale = Float64.new(value)
    end

    def x_root
      (to_unsafe.as(LibGdk::EventTouchpadPinch*).value.x_root)
    end

    def x_root=(value : Float64)
      to_unsafe.as(LibGdk::EventTouchpadPinch*).value.x_root = Float64.new(value)
    end

    def y_root
      (to_unsafe.as(LibGdk::EventTouchpadPinch*).value.y_root)
    end

    def y_root=(value : Float64)
      to_unsafe.as(LibGdk::EventTouchpadPinch*).value.y_root = Float64.new(value)
    end

    def state
      (to_unsafe.as(LibGdk::EventTouchpadPinch*).value.state)
    end

    def state=(value : Gdk::ModifierType)
      to_unsafe.as(LibGdk::EventTouchpadPinch*).value.state = value
    end

  end
end

