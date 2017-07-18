module Gst
  class ParamArray < GObject::ParamSpec
    @gst_param_array : LibGst::ParamArray*?
    def initialize(@gst_param_array : LibGst::ParamArray*)
    end

    def to_unsafe
      @gst_param_array.not_nil!
    end

  end
end

