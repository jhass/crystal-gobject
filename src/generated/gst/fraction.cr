module Gst
  class Fraction
    include GObject::WrappedType

    @gst_fraction : LibGst::Fraction*?
    def initialize(@gst_fraction : LibGst::Fraction*)
    end

    def to_unsafe
      @gst_fraction.not_nil!
    end

  end
end

