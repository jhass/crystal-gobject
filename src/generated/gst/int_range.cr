module Gst
  class IntRange
    include GObject::WrappedType

    def initialize(@gst_int_range)
    end

    def to_unsafe
      @gst_int_range.not_nil!
    end

  end
end

