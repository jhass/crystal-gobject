module Gst
  class GhostPadPrivate
    include GObject::WrappedType

    def initialize(@gst_ghost_pad_private)
    end

    def to_unsafe
      @gst_ghost_pad_private.not_nil!
    end

  end
end

