module Gst
  class GhostPadPrivate
    include GObject::WrappedType

    @gst_ghost_pad_private : LibGst::GhostPadPrivate*?
    def initialize(@gst_ghost_pad_private : LibGst::GhostPadPrivate*)
    end

    def to_unsafe
      @gst_ghost_pad_private.not_nil!
    end

  end
end

