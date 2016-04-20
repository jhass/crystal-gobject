module Gst
  class TimedValue
    include GObject::WrappedType

    @gst_timed_value : LibGst::TimedValue*?
    def initialize(@gst_timed_value : LibGst::TimedValue*)
    end

    def to_unsafe
      @gst_timed_value.not_nil!
    end

  end
end

