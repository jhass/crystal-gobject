module Gst
  class FractionRange
    include GObject::WrappedType

    @gst_fraction_range : LibGst::FractionRange*?
    def initialize(@gst_fraction_range : LibGst::FractionRange*)
    end

    def to_unsafe
      @gst_fraction_range.not_nil!.as(Void*)
    end

  end
end

