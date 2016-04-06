module Gst
  class Int64Range
    include GObject::WrappedType

    def initialize(@gst_int64range)
    end

    def to_unsafe
      @gst_int64range.not_nil!
    end

  end
end

