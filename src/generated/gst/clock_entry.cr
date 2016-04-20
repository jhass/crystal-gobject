module Gst
  class ClockEntry
    include GObject::WrappedType

    @gst_clock_entry : LibGst::ClockEntry*?
    def initialize(@gst_clock_entry : LibGst::ClockEntry*)
    end

    def to_unsafe
      @gst_clock_entry.not_nil!
    end

  end
end

