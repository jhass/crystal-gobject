module Gdk
  class EventProperty
    include GObject::WrappedType

    def self.new(type : Gdk::EventType|Nil = nil, window : Gdk::Window|Nil = nil, send_event : Int8|Nil = nil, atom : Gdk::Atom|Nil = nil, time : UInt32|Nil = nil, state : Gdk::PropertyState|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(40, 0u8)
      new(ptr.as(LibGdk::EventProperty*)).tap do |object|
        object.type = type unless type.nil?
        object.window = window unless window.nil?
        object.send_event = send_event unless send_event.nil?
        object.atom = atom unless atom.nil?
        object.time = time unless time.nil?
        object.state = state unless state.nil?
      end
    end

    @gdk_event_property : LibGdk::EventProperty*?
    def initialize(@gdk_event_property : LibGdk::EventProperty*)
    end

    def to_unsafe
      @gdk_event_property.not_nil!
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

    def atom
      Gdk::Atom.new((to_unsafe.value.atom))
    end

    def atom=(value : Gdk::Atom)
      to_unsafe.value.atom = value.to_unsafe.as(LibGdk::Atom*)
    end

    def time
      (to_unsafe.value.time)
    end

    def time=(value : UInt32)
      to_unsafe.value.time = UInt32.new(value)
    end

    def state
      (to_unsafe.value.state)
    end

    def state=(value : Gdk::PropertyState)
      to_unsafe.value.state = value
    end

  end
end

