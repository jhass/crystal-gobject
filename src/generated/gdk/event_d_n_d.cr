module Gdk
  class EventDND
    include GObject::WrappedType

    def initialize(@gdk_event_d_n_d)
    end

    def to_unsafe
      @gdk_event_d_n_d.not_nil!
    end

  end
end

