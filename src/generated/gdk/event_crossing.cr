module Gdk
  class EventCrossing
    include GObject::WrappedType

    def self.new(type : Gdk::EventType|Nil = nil, window : Gdk::Window|Nil = nil, send_event : Int8|Nil = nil, subwindow : Gdk::Window|Nil = nil, time : UInt32|Nil = nil, x : Float64|Nil = nil, y : Float64|Nil = nil, x_root : Float64|Nil = nil, y_root : Float64|Nil = nil, mode : Gdk::CrossingMode|Nil = nil, detail : Gdk::NotifyType|Nil = nil, focus : Bool|Nil = nil, state : Gdk::ModifierType|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(88, 0u8)
      new(ptr.as(LibGdk::EventCrossing*)).tap do |object|
        object.type = type unless type.nil?
        object.window = window unless window.nil?
        object.send_event = send_event unless send_event.nil?
        object.subwindow = subwindow unless subwindow.nil?
        object.time = time unless time.nil?
        object.x = x unless x.nil?
        object.y = y unless y.nil?
        object.x_root = x_root unless x_root.nil?
        object.y_root = y_root unless y_root.nil?
        object.mode = mode unless mode.nil?
        object.detail = detail unless detail.nil?
        object.focus = focus unless focus.nil?
        object.state = state unless state.nil?
      end
    end

    @gdk_event_crossing : LibGdk::EventCrossing*?
    def initialize(@gdk_event_crossing : LibGdk::EventCrossing*)
    end

    def to_unsafe
      @gdk_event_crossing.not_nil!
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

    def subwindow
      Gdk::Window.new((to_unsafe.value.subwindow))
    end

    def subwindow=(value : Gdk::Window)
      to_unsafe.value.subwindow = value.to_unsafe.as(LibGdk::Window*)
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

    def mode
      (to_unsafe.value.mode)
    end

    def mode=(value : Gdk::CrossingMode)
      to_unsafe.value.mode = value
    end

    def detail
      (to_unsafe.value.detail)
    end

    def detail=(value : Gdk::NotifyType)
      to_unsafe.value.detail = value
    end

    def focus
      (to_unsafe.value.focus)
    end

    def focus=(value : Bool)
      to_unsafe.value.focus = value
    end

    def state
      (to_unsafe.value.state)
    end

    def state=(value : Gdk::ModifierType)
      to_unsafe.value.state = value
    end

  end
end

