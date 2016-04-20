module Gdk
  class EventButton
    include GObject::WrappedType

    @gdk_event_button : LibGdk::EventButton*?
    def initialize(@gdk_event_button : LibGdk::EventButton*)
    end

    def to_unsafe
      @gdk_event_button.not_nil!
    end

  end
end

