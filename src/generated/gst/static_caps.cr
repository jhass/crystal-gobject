module Gst
  class StaticCaps
    include GObject::WrappedType

    def self.new(caps : Gst::Caps|Nil = nil, string : String|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(48, 0u8)
      new(ptr.as(LibGst::StaticCaps*)).tap do |object|
        object.caps = caps unless caps.nil?
        object.string = string unless string.nil?
      end
    end

    @gst_static_caps : LibGst::StaticCaps*?
    def initialize(@gst_static_caps : LibGst::StaticCaps*)
    end

    def to_unsafe
      @gst_static_caps.not_nil!.as(Void*)
    end

    def cleanup
      __return_value = LibGst.static_caps_cleanup(to_unsafe.as(LibGst::StaticCaps*))
      __return_value
    end

    def get
      __return_value = LibGst.static_caps_get(to_unsafe.as(LibGst::StaticCaps*))
      Gst::Caps.new(__return_value)
    end

    def caps
      Gst::Caps.new((to_unsafe.value.caps))
    end

    def caps=(value : Gst::Caps)
      to_unsafe.value.caps = value.to_unsafe.as(LibGst::Caps*)
    end

    def string
      (raise "Expected string but got null" unless (to_unsafe.value.string); ::String.new((to_unsafe.value.string)))
    end

    def string=(value : String)
      to_unsafe.value.string = value.to_unsafe
    end

    def _gst_reserved
      PointerIterator.new((to_unsafe.value._gst_reserved)) {|__item| __item }
    end

  end
end

