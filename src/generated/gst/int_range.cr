module Gst
  class IntRange
    include GObject::WrappedType

    @gst_int_range : LibGst::IntRange*?
    def initialize(@gst_int_range : LibGst::IntRange*)
    end

    def to_unsafe
      @gst_int_range.not_nil!
    end

  end
end

