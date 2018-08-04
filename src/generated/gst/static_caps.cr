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

    @pointer : Void*
    def initialize(pointer : LibGst::StaticCaps*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::StaticCaps*)
    end

    def cleanup
      LibGst.static_caps_cleanup(@pointer.as(LibGst::StaticCaps*))
      nil
    end

    def get
      __return_value = LibGst.static_caps_get(@pointer.as(LibGst::StaticCaps*))
      Gst::Caps.new(__return_value) if __return_value
    end

    def caps
      Gst::Caps.new((to_unsafe.as(LibGst::StaticCaps*).value.caps))
    end

    def caps=(value : Gst::Caps)
      to_unsafe.as(LibGst::StaticCaps*).value.caps = value.to_unsafe.as(LibGst::Caps*)
    end

    def string
      (raise "Expected string but got null" unless (to_unsafe.as(LibGst::StaticCaps*).value.string); ::String.new((to_unsafe.as(LibGst::StaticCaps*).value.string)))
    end

    def string=(value : String)
      to_unsafe.as(LibGst::StaticCaps*).value.string = value.to_unsafe
    end

    def _gst_reserved
      PointerIterator.new((to_unsafe.as(LibGst::StaticCaps*).value._gst_reserved)) {|__item| __item }
    end

  end
end

