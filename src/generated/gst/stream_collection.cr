require "./object"

module Gst
  class StreamCollection < Object
    @gst_stream_collection : LibGst::StreamCollection*?
    def initialize(@gst_stream_collection : LibGst::StreamCollection*)
    end

    def to_unsafe
      @gst_stream_collection.not_nil!
    end


    def self.new(upstream_id) : self
      __return_value = LibGst.stream_collection_new(upstream_id ? upstream_id.to_unsafe : nil)
      cast Gst::StreamCollection.new(__return_value)
    end

    def add_stream(stream)
      __return_value = LibGst.stream_collection_add_stream(to_unsafe.as(LibGst::StreamCollection*), stream.to_unsafe.as(LibGst::Stream*))
      __return_value
    end

    def size
      __return_value = LibGst.stream_collection_get_size(to_unsafe.as(LibGst::StreamCollection*))
      __return_value
    end

    def stream(index)
      __return_value = LibGst.stream_collection_get_stream(to_unsafe.as(LibGst::StreamCollection*), UInt32.new(index))
      Gst::Stream.new(__return_value)
    end

    def upstream_id
      __return_value = LibGst.stream_collection_get_upstream_id(to_unsafe.as(LibGst::StreamCollection*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    alias StreamNotifySignal = StreamCollection, Gst::Stream, GObject::ParamSpec ->
    def on_stream_notify(&__block : StreamNotifySignal)
      __callback = ->(_arg0 : LibGst::StreamCollection*, _arg1 : LibGst::LibGst::Stream*, _arg2 : LibGst::LibGObject::ParamSpec*) {
       __return_value = __block.call(StreamCollection.new(_arg0), Gst::Stream.new(_arg1), GObject::ParamSpec.new(_arg2))
       __return_value
      }
      connect("stream-notify", __callback)
    end

  end
end

