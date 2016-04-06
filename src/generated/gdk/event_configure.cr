module Gdk
  class EventConfigure
    include GObject::WrappedType

    def initialize(@gdk_event_configure)
    end

    def to_unsafe
      @gdk_event_configure.not_nil!
    end

  end
end

