module Gst
  class StreamPrivate
    include GObject::WrappedType

    @gst_stream_private : LibGst::StreamPrivate*?
    def initialize(@gst_stream_private : LibGst::StreamPrivate*)
    end

    def to_unsafe
      @gst_stream_private.not_nil!
    end

  end
end

