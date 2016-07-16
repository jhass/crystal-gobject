module Gdk
  class EventOwnerChange
    include GObject::WrappedType

    def self.new(type : Gdk::EventType|Nil = nil, window : Gdk::Window|Nil = nil, send_event : Int8|Nil = nil, owner : Gdk::Window|Nil = nil, reason : Gdk::OwnerChange|Nil = nil, selection : Gdk::Atom|Nil = nil, time : UInt32|Nil = nil, selection_time : UInt32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(56, 0u8)
      new(ptr.as(LibGdk::EventOwnerChange*)).tap do |object|
        object.type = type unless type.nil?
        object.window = window unless window.nil?
        object.send_event = send_event unless send_event.nil?
        object.owner = owner unless owner.nil?
        object.reason = reason unless reason.nil?
        object.selection = selection unless selection.nil?
        object.time = time unless time.nil?
        object.selection_time = selection_time unless selection_time.nil?
      end
    end

    @gdk_event_owner_change : LibGdk::EventOwnerChange*?
    def initialize(@gdk_event_owner_change : LibGdk::EventOwnerChange*)
    end

    def to_unsafe
      @gdk_event_owner_change.not_nil!.as(Void*)
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

    def owner
      Gdk::Window.new((to_unsafe.value.owner))
    end

    def owner=(value : Gdk::Window)
      to_unsafe.value.owner = value.to_unsafe.as(LibGdk::Window*)
    end

    def reason
      (to_unsafe.value.reason)
    end

    def reason=(value : Gdk::OwnerChange)
      to_unsafe.value.reason = value
    end

    def selection
      Gdk::Atom.new((to_unsafe.value.selection))
    end

    def selection=(value : Gdk::Atom)
      to_unsafe.value.selection = value.to_unsafe.as(LibGdk::Atom*)
    end

    def time
      (to_unsafe.value.time)
    end

    def time=(value : UInt32)
      to_unsafe.value.time = UInt32.new(value)
    end

    def selection_time
      (to_unsafe.value.selection_time)
    end

    def selection_time=(value : UInt32)
      to_unsafe.value.selection_time = UInt32.new(value)
    end

  end
end

