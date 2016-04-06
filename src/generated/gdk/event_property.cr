module Gdk
  class EventProperty
    include GObject::WrappedType

    def initialize(@gdk_event_property)
    end

    def to_unsafe
      @gdk_event_property.not_nil!
    end

  end
end

