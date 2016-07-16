module Gst
  class TracerPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGst::TracerPrivate*))
    end

    @gst_tracer_private : LibGst::TracerPrivate*?
    def initialize(@gst_tracer_private : LibGst::TracerPrivate*)
    end

    def to_unsafe
      @gst_tracer_private.not_nil!
    end

  end
end

