module Gdk
  class EventExpose
    include GObject::WrappedType

    def self.new(type : Gdk::EventType|Nil = nil, window : Gdk::Window|Nil = nil, send_event : Int8|Nil = nil, area : Gdk::Rectangle|Nil = nil, region : Cairo::Region|Nil = nil, count : Int32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(56, 0u8)
      new(ptr.as(LibGdk::EventExpose*)).tap do |object|
        object.type = type unless type.nil?
        object.window = window unless window.nil?
        object.send_event = send_event unless send_event.nil?
        object.area = area unless area.nil?
        object.region = region unless region.nil?
        object.count = count unless count.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibGdk::EventExpose*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGdk::EventExpose*)
    end

    def type
      (to_unsafe.as(LibGdk::EventExpose*).value.type)
    end

    def type=(value : Gdk::EventType)
      to_unsafe.as(LibGdk::EventExpose*).value.type = value
    end

    def window
      Gdk::Window.new((to_unsafe.as(LibGdk::EventExpose*).value.window))
    end

    def window=(value : Gdk::Window)
      to_unsafe.as(LibGdk::EventExpose*).value.window = value.to_unsafe.as(LibGdk::Window*)
    end

    def send_event
      (to_unsafe.as(LibGdk::EventExpose*).value.send_event)
    end

    def send_event=(value : Int8)
      to_unsafe.as(LibGdk::EventExpose*).value.send_event = Int8.new(value)
    end

    def area
      Gdk::Rectangle.new((to_unsafe.as(LibGdk::EventExpose*).value.area))
    end

    def area=(value : Gdk::Rectangle)
      to_unsafe.as(LibGdk::EventExpose*).value.area = value
    end

    def region
      Cairo::Region.new((to_unsafe.as(LibGdk::EventExpose*).value.region))
    end

    def region=(value : Cairo::Region)
      to_unsafe.as(LibGdk::EventExpose*).value.region = value.to_unsafe.as(LibCairo::Region*)
    end

    def count
      (to_unsafe.as(LibGdk::EventExpose*).value.count)
    end

    def count=(value : Int32)
      to_unsafe.as(LibGdk::EventExpose*).value.count = Int32.new(value)
    end

  end
end

