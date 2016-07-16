module Gst
  class GhostPadPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGst::GhostPadPrivate*))
    end

    @gst_ghost_pad_private : LibGst::GhostPadPrivate*?
    def initialize(@gst_ghost_pad_private : LibGst::GhostPadPrivate*)
    end

    def to_unsafe
      @gst_ghost_pad_private.not_nil!
    end

  end
end

