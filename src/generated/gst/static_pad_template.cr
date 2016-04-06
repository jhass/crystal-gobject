module Gst
  class StaticPadTemplate
    include GObject::WrappedType

    def initialize(@gst_static_pad_template)
    end

    def to_unsafe
      @gst_static_pad_template.not_nil!
    end

    def get
      __return_value = LibGst.static_pad_template_get((to_unsafe as LibGst::StaticPadTemplate*))
      Gst::PadTemplate.new(__return_value)
    end

    def caps
      __return_value = LibGst.static_pad_template_get_caps((to_unsafe as LibGst::StaticPadTemplate*))
      Gst::Caps.new(__return_value)
    end

  end
end

