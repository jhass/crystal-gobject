module Gst
  class ParamFraction < GObject::ParamSpec
    def initialize(@gst_param_fraction)
    end

    def to_unsafe
      @gst_param_fraction.not_nil!
    end

  end
end

