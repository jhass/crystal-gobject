module Gdk
  class EventSetting
    include GObject::WrappedType

    @gdk_event_setting : LibGdk::EventSetting*?
    def initialize(@gdk_event_setting : LibGdk::EventSetting*)
    end

    def to_unsafe
      @gdk_event_setting.not_nil!
    end

  end
end

