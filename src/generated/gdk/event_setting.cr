module Gdk
  class EventSetting
    include GObject::WrappedType

    def initialize(@gdk_event_setting)
    end

    def to_unsafe
      @gdk_event_setting.not_nil!
    end

  end
end

