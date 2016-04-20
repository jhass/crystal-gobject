module Gdk
  class EventAny
    include GObject::WrappedType

    @gdk_event_any : LibGdk::EventAny*?
    def initialize(@gdk_event_any : LibGdk::EventAny*)
    end

    def to_unsafe
      @gdk_event_any.not_nil!
    end

  end
end

