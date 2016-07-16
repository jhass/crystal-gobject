module Gdk
  class EventSelection
    include GObject::WrappedType

    def self.new(type : Gdk::EventType|Nil = nil, window : Gdk::Window|Nil = nil, send_event : Int8|Nil = nil, selection : Gdk::Atom|Nil = nil, target : Gdk::Atom|Nil = nil, property : Gdk::Atom|Nil = nil, time : UInt32|Nil = nil, requestor : Gdk::Window|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(64, 0u8)
      new(ptr.as(LibGdk::EventSelection*)).tap do |object|
        object.type = type unless type.nil?
        object.window = window unless window.nil?
        object.send_event = send_event unless send_event.nil?
        object.selection = selection unless selection.nil?
        object.target = target unless target.nil?
        object.property = property unless property.nil?
        object.time = time unless time.nil?
        object.requestor = requestor unless requestor.nil?
      end
    end

    @gdk_event_selection : LibGdk::EventSelection*?
    def initialize(@gdk_event_selection : LibGdk::EventSelection*)
    end

    def to_unsafe
      @gdk_event_selection.not_nil!.as(Void*)
    end

    def type
      (to_unsafe.as(LibGdk::EventSelection*).value.type)
    end

    def type=(value : Gdk::EventType)
      to_unsafe.as(LibGdk::EventSelection*).value.type = value
    end

    def window
      Gdk::Window.new((to_unsafe.as(LibGdk::EventSelection*).value.window))
    end

    def window=(value : Gdk::Window)
      to_unsafe.as(LibGdk::EventSelection*).value.window = value.to_unsafe.as(LibGdk::Window*)
    end

    def send_event
      (to_unsafe.as(LibGdk::EventSelection*).value.send_event)
    end

    def send_event=(value : Int8)
      to_unsafe.as(LibGdk::EventSelection*).value.send_event = Int8.new(value)
    end

    def selection
      Gdk::Atom.new((to_unsafe.as(LibGdk::EventSelection*).value.selection))
    end

    def selection=(value : Gdk::Atom)
      to_unsafe.as(LibGdk::EventSelection*).value.selection = value.to_unsafe.as(LibGdk::Atom*)
    end

    def target
      Gdk::Atom.new((to_unsafe.as(LibGdk::EventSelection*).value.target))
    end

    def target=(value : Gdk::Atom)
      to_unsafe.as(LibGdk::EventSelection*).value.target = value.to_unsafe.as(LibGdk::Atom*)
    end

    def property
      Gdk::Atom.new((to_unsafe.as(LibGdk::EventSelection*).value.property))
    end

    def property=(value : Gdk::Atom)
      to_unsafe.as(LibGdk::EventSelection*).value.property = value.to_unsafe.as(LibGdk::Atom*)
    end

    def time
      (to_unsafe.as(LibGdk::EventSelection*).value.time)
    end

    def time=(value : UInt32)
      to_unsafe.as(LibGdk::EventSelection*).value.time = UInt32.new(value)
    end

    def requestor
      Gdk::Window.new((to_unsafe.as(LibGdk::EventSelection*).value.requestor))
    end

    def requestor=(value : Gdk::Window)
      to_unsafe.as(LibGdk::EventSelection*).value.requestor = value.to_unsafe.as(LibGdk::Window*)
    end

  end
end

