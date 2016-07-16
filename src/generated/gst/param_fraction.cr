module Gst
  class ParamFraction < GObject::ParamSpec
    @gst_param_fraction : LibGst::ParamFraction*?
    def initialize(@gst_param_fraction : LibGst::ParamFraction*)
    end

    def to_unsafe
      @gst_param_fraction.not_nil!.as(Void*)
    end

  end
end

