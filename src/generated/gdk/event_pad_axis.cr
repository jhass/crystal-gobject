module Gdk
  class EventPadAxis
    include GObject::WrappedType

    def self.new(type : Gdk::EventType|Nil = nil, window : Gdk::Window|Nil = nil, send_event : Int8|Nil = nil, time : UInt32|Nil = nil, group : UInt32|Nil = nil, index : UInt32|Nil = nil, mode : UInt32|Nil = nil, value : Float64|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(48, 0u8)
      new(ptr.as(LibGdk::EventPadAxis*)).tap do |object|
        object.type = type unless type.nil?
        object.window = window unless window.nil?
        object.send_event = send_event unless send_event.nil?
        object.time = time unless time.nil?
        object.group = group unless group.nil?
        object.index = index unless index.nil?
        object.mode = mode unless mode.nil?
        object.value = value unless value.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibGdk::EventPadAxis*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGdk::EventPadAxis*)
    end

    def type
      (to_unsafe.as(LibGdk::EventPadAxis*).value.type)
    end

    def type=(value : Gdk::EventType)
      to_unsafe.as(LibGdk::EventPadAxis*).value.type = value
    end

    def window
      Gdk::Window.new((to_unsafe.as(LibGdk::EventPadAxis*).value.window))
    end

    def window=(value : Gdk::Window)
      to_unsafe.as(LibGdk::EventPadAxis*).value.window = value.to_unsafe.as(LibGdk::Window*)
    end

    def send_event
      (to_unsafe.as(LibGdk::EventPadAxis*).value.send_event)
    end

    def send_event=(value : Int8)
      to_unsafe.as(LibGdk::EventPadAxis*).value.send_event = Int8.new(value)
    end

    def time
      (to_unsafe.as(LibGdk::EventPadAxis*).value.time)
    end

    def time=(value : UInt32)
      to_unsafe.as(LibGdk::EventPadAxis*).value.time = UInt32.new(value)
    end

    def group
      (to_unsafe.as(LibGdk::EventPadAxis*).value.group)
    end

    def group=(value : UInt32)
      to_unsafe.as(LibGdk::EventPadAxis*).value.group = UInt32.new(value)
    end

    def index
      (to_unsafe.as(LibGdk::EventPadAxis*).value.index)
    end

    def index=(value : UInt32)
      to_unsafe.as(LibGdk::EventPadAxis*).value.index = UInt32.new(value)
    end

    def mode
      (to_unsafe.as(LibGdk::EventPadAxis*).value.mode)
    end

    def mode=(value : UInt32)
      to_unsafe.as(LibGdk::EventPadAxis*).value.mode = UInt32.new(value)
    end

    def value
      (to_unsafe.as(LibGdk::EventPadAxis*).value.value)
    end

    def value=(value : Float64)
      to_unsafe.as(LibGdk::EventPadAxis*).value.value = Float64.new(value)
    end

  end
end

