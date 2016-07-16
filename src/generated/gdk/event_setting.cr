module Gdk
  class EventSetting
    include GObject::WrappedType

    def self.new(type : Gdk::EventType|Nil = nil, window : Gdk::Window|Nil = nil, send_event : Int8|Nil = nil, action : Gdk::SettingAction|Nil = nil, name : String|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(32, 0u8)
      new(ptr.as(LibGdk::EventSetting*)).tap do |object|
        object.type = type unless type.nil?
        object.window = window unless window.nil?
        object.send_event = send_event unless send_event.nil?
        object.action = action unless action.nil?
        object.name = name unless name.nil?
      end
    end

    @gdk_event_setting : LibGdk::EventSetting*?
    def initialize(@gdk_event_setting : LibGdk::EventSetting*)
    end

    def to_unsafe
      @gdk_event_setting.not_nil!.as(Void*)
    end

    def type
      (to_unsafe.as(LibGdk::EventSetting*).value.type)
    end

    def type=(value : Gdk::EventType)
      to_unsafe.as(LibGdk::EventSetting*).value.type = value
    end

    def window
      Gdk::Window.new((to_unsafe.as(LibGdk::EventSetting*).value.window))
    end

    def window=(value : Gdk::Window)
      to_unsafe.as(LibGdk::EventSetting*).value.window = value.to_unsafe.as(LibGdk::Window*)
    end

    def send_event
      (to_unsafe.as(LibGdk::EventSetting*).value.send_event)
    end

    def send_event=(value : Int8)
      to_unsafe.as(LibGdk::EventSetting*).value.send_event = Int8.new(value)
    end

    def action
      (to_unsafe.as(LibGdk::EventSetting*).value.action)
    end

    def action=(value : Gdk::SettingAction)
      to_unsafe.as(LibGdk::EventSetting*).value.action = value
    end

    def name
      (raise "Expected string but got null" unless (to_unsafe.as(LibGdk::EventSetting*).value.name); ::String.new((to_unsafe.as(LibGdk::EventSetting*).value.name)))
    end

    def name=(value : String)
      to_unsafe.as(LibGdk::EventSetting*).value.name = value.to_unsafe
    end

  end
end

