module Gdk
  class EventDND
    include GObject::WrappedType

    def self.new(type : Gdk::EventType|Nil = nil, window : Gdk::Window|Nil = nil, send_event : Int8|Nil = nil, context : Gdk::DragContext|Nil = nil, time : UInt32|Nil = nil, x_root : Int16|Nil = nil, y_root : Int16|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(40, 0u8)
      new(ptr.as(LibGdk::EventDND*)).tap do |object|
        object.type = type unless type.nil?
        object.window = window unless window.nil?
        object.send_event = send_event unless send_event.nil?
        object.context = context unless context.nil?
        object.time = time unless time.nil?
        object.x_root = x_root unless x_root.nil?
        object.y_root = y_root unless y_root.nil?
      end
    end

    @gdk_event_d_n_d : LibGdk::EventDND*?
    def initialize(@gdk_event_d_n_d : LibGdk::EventDND*)
    end

    def to_unsafe
      @gdk_event_d_n_d.not_nil!.as(Void*)
    end

    def type
      (to_unsafe.as(LibGdk::EventDND*).value.type)
    end

    def type=(value : Gdk::EventType)
      to_unsafe.as(LibGdk::EventDND*).value.type = value
    end

    def window
      Gdk::Window.new((to_unsafe.as(LibGdk::EventDND*).value.window))
    end

    def window=(value : Gdk::Window)
      to_unsafe.as(LibGdk::EventDND*).value.window = value.to_unsafe.as(LibGdk::Window*)
    end

    def send_event
      (to_unsafe.as(LibGdk::EventDND*).value.send_event)
    end

    def send_event=(value : Int8)
      to_unsafe.as(LibGdk::EventDND*).value.send_event = Int8.new(value)
    end

    def context
      Gdk::DragContext.new((to_unsafe.as(LibGdk::EventDND*).value.context))
    end

    def context=(value : Gdk::DragContext)
      to_unsafe.as(LibGdk::EventDND*).value.context = value.to_unsafe.as(LibGdk::DragContext*)
    end

    def time
      (to_unsafe.as(LibGdk::EventDND*).value.time)
    end

    def time=(value : UInt32)
      to_unsafe.as(LibGdk::EventDND*).value.time = UInt32.new(value)
    end

    def x_root
      (to_unsafe.as(LibGdk::EventDND*).value.x_root)
    end

    def x_root=(value : Int16)
      to_unsafe.as(LibGdk::EventDND*).value.x_root = Int16.new(value)
    end

    def y_root
      (to_unsafe.as(LibGdk::EventDND*).value.y_root)
    end

    def y_root=(value : Int16)
      to_unsafe.as(LibGdk::EventDND*).value.y_root = Int16.new(value)
    end

  end
end

