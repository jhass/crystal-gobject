module Gst
  class DoubleRange
    include GObject::WrappedType

    @gst_double_range : LibGst::DoubleRange*?
    def initialize(@gst_double_range : LibGst::DoubleRange*)
    end

    def to_unsafe
      @gst_double_range.not_nil!.as(Void*)
    end

  end
end

