module Gst
  class ParamSpecFraction
    include GObject::WrappedType

    def initialize(@gst_param_spec_fraction)
    end

    def to_unsafe
      @gst_param_spec_fraction.not_nil!
    end

  end
end

