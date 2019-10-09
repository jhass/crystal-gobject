require "./object"

module Gst
  class StreamCollection < Object
    @pointer : Void*
    def initialize(pointer : LibGst::StreamCollection*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::StreamCollection*)
    end

    def upstream_id
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "upstream_id", gvalue)
      gvalue.string
    end

    def self.new(upstream_id) : self
      __return_value = LibGst.stream_collection_new(upstream_id ? upstream_id.to_unsafe : nil)
      cast Gst::StreamCollection.new(__return_value)
    end

    def add_stream(stream)
      __return_value = LibGst.stream_collection_add_stream(@pointer.as(LibGst::StreamCollection*), stream.to_unsafe.as(LibGst::Stream*))
      __return_value
    end

    def size
      __return_value = LibGst.stream_collection_get_size(@pointer.as(LibGst::StreamCollection*))
      __return_value
    end

    def stream(index)
      __return_value = LibGst.stream_collection_get_stream(@pointer.as(LibGst::StreamCollection*), UInt32.new(index))
      Gst::Stream.new(__return_value) if __return_value
    end

    def upstream_id
      __return_value = LibGst.stream_collection_get_upstream_id(@pointer.as(LibGst::StreamCollection*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    alias StreamNotifySignal = StreamCollection, Gst::Stream, GObject::ParamSpec ->
    def on_stream_notify(&__block : StreamNotifySignal)
      __callback = ->(_arg0 : LibGst::StreamCollection*, _arg1 : LibGst::Stream**, _arg2 : LibGObject::ParamSpec**) {
       __return_value = __block.call(StreamCollection.new(_arg0), Gst::Stream.new(_arg1), GObject::ParamSpec.new(_arg2))
       __return_value
      }
      connect("stream-notify", __callback)
    end

  end
end

