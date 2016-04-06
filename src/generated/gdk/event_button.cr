module Gdk
  class EventButton
    include GObject::WrappedType

    def initialize(@gdk_event_button)
    end

    def to_unsafe
      @gdk_event_button.not_nil!
    end

  end
end

