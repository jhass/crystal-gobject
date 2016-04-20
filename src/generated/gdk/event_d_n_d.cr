module Gdk
  class EventDND
    include GObject::WrappedType

    @gdk_event_d_n_d : LibGdk::EventDND*?
    def initialize(@gdk_event_d_n_d : LibGdk::EventDND*)
    end

    def to_unsafe
      @gdk_event_d_n_d.not_nil!
    end

  end
end

