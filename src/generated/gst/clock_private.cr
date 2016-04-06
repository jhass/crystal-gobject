module Gst
  class ClockPrivate
    include GObject::WrappedType

    def initialize(@gst_clock_private)
    end

    def to_unsafe
      @gst_clock_private.not_nil!
    end

  end
end

