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
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "caps", gvalue)
      Gst::Caps.cast(gvalue.object)
    end

    def direction
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "direction", gvalue)
      gvalue.enum
    end

    def gtype
      gvalue = GObject::Value.new(GObject::Type::GTYPE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtype", gvalue)
      gvalue
    end

    def name_template
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "name_template", gvalue)
      gvalue.string
    end

    def presence
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "presence", gvalue)
      gvalue.enum
    end

    def self.new(name_template, direction : Gst::PadDirection, presence : Gst::PadPresence, caps) : self
      __return_value = LibGst.pad_template_new(name_template.to_unsafe, direction, presence, caps.to_unsafe.as(LibGst::Caps*))
      cast Gst::PadTemplate.new(__return_value) if __return_value
    end

    def self.new_from_static_pad_template_with_gtype(pad_template, pad_type) : self
      __return_value = LibGst.pad_template_new_from_static_pad_template_with_gtype(pad_template.to_unsafe.as(LibGst::StaticPadTemplate*), UInt64.new(pad_type))
      cast Gst::PadTemplate.new(__return_value) if __return_value
    end

    def self.new_with_gtype(name_template, direction : Gst::PadDirection, presence : Gst::PadPresence, caps, pad_type) : self
      __return_value = LibGst.pad_template_new_with_gtype(name_template.to_unsafe, direction, presence, caps.to_unsafe.as(LibGst::Caps*), UInt64.new(pad_type))
      cast Gst::PadTemplate.new(__return_value) if __return_value
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
      __callback = ->(_arg0 : LibGst::PadTemplate*, _arg1 : LibGst::LibGst::Pad**) {
       __return_value = __block.call(PadTemplate.new(_arg0), Gst::Pad.new(_arg1))
       __return_value
      }
      connect("pad-created", __callback)
    end

  end
end

