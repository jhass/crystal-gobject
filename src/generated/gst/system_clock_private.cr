module Gst
  class SystemClockPrivate
    include GObject::WrappedType

    def initialize(@gst_system_clock_private)
    end

    def to_unsafe
      @gst_system_clock_private.not_nil!
    end

  end
end

