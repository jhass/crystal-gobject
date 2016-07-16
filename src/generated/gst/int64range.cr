module Gst
  class Int64Range
    include GObject::WrappedType

    @gst_int64range : LibGst::Int64Range*?
    def initialize(@gst_int64range : LibGst::Int64Range*)
    end

    def to_unsafe
      @gst_int64range.not_nil!.as(Void*)
    end

  end
end

