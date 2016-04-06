module Gst
  class DoubleRange
    include GObject::WrappedType

    def initialize(@gst_double_range)
    end

    def to_unsafe
      @gst_double_range.not_nil!
    end

  end
end

