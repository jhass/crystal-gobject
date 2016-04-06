module Gst
  class ClockEntry
    include GObject::WrappedType

    def initialize(@gst_clock_entry)
    end

    def to_unsafe
      @gst_clock_entry.not_nil!
    end

  end
end

