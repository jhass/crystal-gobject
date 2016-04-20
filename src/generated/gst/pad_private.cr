module Gst
  class PadPrivate
    include GObject::WrappedType

    @gst_pad_private : LibGst::PadPrivate*?
    def initialize(@gst_pad_private : LibGst::PadPrivate*)
    end

    def to_unsafe
      @gst_pad_private.not_nil!
    end

  end
end

