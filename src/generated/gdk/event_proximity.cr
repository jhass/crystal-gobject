module Gdk
  class EventProximity
    include GObject::WrappedType

    def self.new(type : Gdk::EventType|Nil = nil, window : Gdk::Window|Nil = nil, send_event : Int8|Nil = nil, time : UInt32|Nil = nil, device : Gdk::Device|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(32, 0u8)
      new(ptr.as(LibGdk::EventProximity*)).tap do |object|
        object.type = type unless type.nil?
        object.window = window unless window.nil?
        object.send_event = send_event unless send_event.nil?
        object.time = time unless time.nil?
        object.device = device unless device.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibGdk::EventProximity*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGdk::EventProximity*)
    end

    def type
      (to_unsafe.as(LibGdk::EventProximity*).value.type)
    end

    def type=(value : Gdk::EventType)
      to_unsafe.as(LibGdk::EventProximity*).value.type = value
    end

    def window
      Gdk::Window.new((to_unsafe.as(LibGdk::EventProximity*).value.window))
    end

    def window=(value : Gdk::Window)
      to_unsafe.as(LibGdk::EventProximity*).value.window = value.to_unsafe.as(LibGdk::Window*)
    end

    def send_event
      (to_unsafe.as(LibGdk::EventProximity*).value.send_event)
    end

    def send_event=(value : Int8)
      to_unsafe.as(LibGdk::EventProximity*).value.send_event = Int8.new(value)
    end

    def time
      (to_unsafe.as(LibGdk::EventProximity*).value.time)
    end

    def time=(value : UInt32)
      to_unsafe.as(LibGdk::EventProximity*).value.time = UInt32.new(value)
    end

    def device
      Gdk::Device.new((to_unsafe.as(LibGdk::EventProximity*).value.device))
    end

    def device=(value : Gdk::Device)
      to_unsafe.as(LibGdk::EventProximity*).value.device = value.to_unsafe.as(LibGdk::Device*)
    end

  end
end

