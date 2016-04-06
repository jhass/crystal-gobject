module Gst
  class Fraction
    include GObject::WrappedType

    def initialize(@gst_fraction)
    end

    def to_unsafe
      @gst_fraction.not_nil!
    end

  end
end

