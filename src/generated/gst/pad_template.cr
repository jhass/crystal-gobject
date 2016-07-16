require "./object"

module Gst
  class PadTemplate < Object
    @gst_pad_template : LibGst::PadTemplate*?
    def initialize(@gst_pad_template : LibGst::PadTemplate*)
    end

    def to_unsafe
      @gst_pad_template.not_nil!.as(Void*)
    end





    def self.new(name_template, direction, presence, caps) : self
      __return_value = LibGst.pad_template_new(name_template.to_unsafe, direction, presence, caps.to_unsafe.as(LibGst::Caps*))
      cast Gst::PadTemplate.new(__return_value)
    end

    def caps
      __return_value = LibGst.pad_template_get_caps(to_unsafe.as(LibGst::PadTemplate*))
      Gst::Caps.new(__return_value)
    end

    def pad_created(pad)
      __return_value = LibGst.pad_template_pad_created(to_unsafe.as(LibGst::PadTemplate*), pad.to_unsafe.as(LibGst::Pad*))
      __return_value
    end

    alias PadCreatedSignal = PadTemplate, Gst::Pad ->
    def on_pad_created(&__block : PadCreatedSignal)
      __callback = ->(_arg0 : LibGst::PadTemplate*, _arg1 : LibGst::LibGst::Pad*) {
       __return_value = __block.call(PadTemplate.new(_arg0), Gst::Pad.new(_arg1))
       __return_value
      }
      connect("pad-created", __callback)
    end

  end
end

