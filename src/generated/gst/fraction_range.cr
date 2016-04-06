module Gst
  class FractionRange
    include GObject::WrappedType

    def initialize(@gst_fraction_range)
    end

    def to_unsafe
      @gst_fraction_range.not_nil!
    end

  end
end

