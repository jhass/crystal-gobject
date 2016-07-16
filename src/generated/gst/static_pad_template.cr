module Gst
  class StaticPadTemplate
    include GObject::WrappedType

    def self.new(name_template : String|Nil = nil, direction : Gst::PadDirection|Nil = nil, presence : Gst::PadPresence|Nil = nil, static_caps : Gst::StaticCaps|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(64, 0u8)
      new(ptr.as(LibGst::StaticPadTemplate*)).tap do |object|
        object.name_template = name_template unless name_template.nil?
        object.direction = direction unless direction.nil?
        object.presence = presence unless presence.nil?
        object.static_caps = static_caps unless static_caps.nil?
      end
    end

    @gst_static_pad_template : LibGst::StaticPadTemplate*?
    def initialize(@gst_static_pad_template : LibGst::StaticPadTemplate*)
    end

    def to_unsafe
      @gst_static_pad_template.not_nil!
    end

    def get
      __return_value = LibGst.static_pad_template_get(to_unsafe.as(LibGst::StaticPadTemplate*))
      Gst::PadTemplate.new(__return_value)
    end

    def caps
      __return_value = LibGst.static_pad_template_get_caps(to_unsafe.as(LibGst::StaticPadTemplate*))
      Gst::Caps.new(__return_value)
    end

    def name_template
      (raise "Expected string but got null" unless (to_unsafe.value.name_template); ::String.new((to_unsafe.value.name_template)))
    end

    def name_template=(value : String)
      to_unsafe.value.name_template = value.to_unsafe
    end

    def direction
      (to_unsafe.value.direction)
    end

    def direction=(value : Gst::PadDirection)
      to_unsafe.value.direction = value
    end

    def presence
      (to_unsafe.value.presence)
    end

    def presence=(value : Gst::PadPresence)
      to_unsafe.value.presence = value
    end

    def static_caps
      Gst::StaticCaps.new((to_unsafe.value.static_caps))
    end

    def static_caps=(value : Gst::StaticCaps)
      to_unsafe.value.static_caps = value
    end

  end
end

