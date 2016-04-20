module Gst
  class ParamSpecFraction
    include GObject::WrappedType

    @gst_param_spec_fraction : LibGst::ParamSpecFraction*?
    def initialize(@gst_param_spec_fraction : LibGst::ParamSpecFraction*)
    end

    def to_unsafe
      @gst_param_spec_fraction.not_nil!
    end

  end
end

