module Gst
  class TimedValue
    include GObject::WrappedType

    def initialize(@gst_timed_value)
    end

    def to_unsafe
      @gst_timed_value.not_nil!
    end

  end
end

