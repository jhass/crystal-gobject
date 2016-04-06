module Gst
  class PadPrivate
    include GObject::WrappedType

    def initialize(@gst_pad_private)
    end

    def to_unsafe
      @gst_pad_private.not_nil!
    end

  end
end

