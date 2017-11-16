require "./object"

module Gst
  class PadTemplate < Object
    @pointer : Void*
    def initialize(pointer : LibGst::PadTemplate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::PadTemplate*)
    end

    def caps
      __return_value = LibGst.pad_template_get_caps(to_unsafe.as(LibGst::PadTemplate*))
      Gst::Caps.new(__return_value)
    end

    def direction
      __return_value = LibGst.pad_template_get_direction(to_unsafe.as(LibGst::PadTemplate*))
      __return_value
    end

    def name_template
      __return_value = LibGst.pad_template_get_name_template(to_unsafe.as(LibGst::PadTemplate*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def presence
      __return_value = LibGst.pad_template_get_presence(to_unsafe.as(LibGst::PadTemplate*))
      __return_value
    end

    def self.new(name_template, direction : Gst::PadDirection, presence : Gst::PadPresence, caps) : self
      __return_value = LibGst.pad_template_new(name_template.to_unsafe, direction, presence, caps.to_unsafe.as(LibGst::Caps*))
      cast Gst::PadTemplate.new(__return_value)
    end

    def caps
      __return_value = LibGst.pad_template_get_caps(@pointer.as(LibGst::PadTemplate*))
      Gst::Caps.new(__return_value)
    end

    def pad_created(pad)
      LibGst.pad_template_pad_created(@pointer.as(LibGst::PadTemplate*), pad.to_unsafe.as(LibGst::Pad*))
      nil
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

