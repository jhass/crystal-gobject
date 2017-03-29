module Gst
  class StreamCollectionPrivate
    include GObject::WrappedType

    @gst_stream_collection_private : LibGst::StreamCollectionPrivate*?
    def initialize(@gst_stream_collection_private : LibGst::StreamCollectionPrivate*)
    end

    def to_unsafe
      @gst_stream_collection_private.not_nil!
    end

  end
end

