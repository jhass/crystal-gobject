module Gst
  class PadPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGst::PadPrivate*))
    end

    @gst_pad_private : LibGst::PadPrivate*?
    def initialize(@gst_pad_private : LibGst::PadPrivate*)
    end

    def to_unsafe
      @gst_pad_private.not_nil!.as(Void*)
    end

  end
end

