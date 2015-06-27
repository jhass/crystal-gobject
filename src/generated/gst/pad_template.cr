require "./object"

module Gst
  class PadTemplate < Object
    def initialize @gst_pad_template
    end

    def to_unsafe
      @gst_pad_template.not_nil!
    end





    def self.new_internal(name_template, direction, presence, caps)
      __return_value = LibGst.pad_template_new(name_template, direction, presence, (caps.to_unsafe as LibGst::Caps*))
      Gst::PadTemplate.new(__return_value)
    end

    def caps
      __return_value = LibGst.pad_template_get_caps((to_unsafe as LibGst::PadTemplate*))
      Gst::Caps.new(__return_value)
    end

    def pad_created(pad)
      __return_value = LibGst.pad_template_pad_created((to_unsafe as LibGst::PadTemplate*), (pad.to_unsafe as LibGst::Pad*))
      __return_value
    end

  end
end

