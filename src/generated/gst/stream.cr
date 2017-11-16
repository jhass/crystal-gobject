require "./object"

module Gst
  class Stream < Object
    @pointer : Void*
    def initialize(pointer : LibGst::Stream*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::Stream*)
    end

    def caps
      __return_value = LibGst.stream_get_caps(to_unsafe.as(LibGst::Stream*))
      Gst::Caps.new(__return_value)
    end

    def stream_flags
      __return_value = LibGst.stream_get_stream_flags(to_unsafe.as(LibGst::Stream*))
      __return_value
    end

    def stream_id
      __return_value = LibGst.stream_get_stream_id(to_unsafe.as(LibGst::Stream*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def stream_type
      __return_value = LibGst.stream_get_stream_type(to_unsafe.as(LibGst::Stream*))
      __return_value
    end

    def tags
      __return_value = LibGst.stream_get_tags(to_unsafe.as(LibGst::Stream*))
      Gst::TagList.new(__return_value)
    end

    def self.new(stream_id, caps, type : Gst::StreamType, flags : Gst::StreamFlags) : self
      __return_value = LibGst.stream_new(stream_id ? stream_id.to_unsafe : nil, caps ? caps.to_unsafe.as(LibGst::Caps*) : nil, type, flags)
      cast Gst::Stream.new(__return_value)
    end

    def caps
      __return_value = LibGst.stream_get_caps(@pointer.as(LibGst::Stream*))
      Gst::Caps.new(__return_value) if __return_value
    end

    def stream_flags
      __return_value = LibGst.stream_get_stream_flags(@pointer.as(LibGst::Stream*))
      __return_value
    end

    def stream_id
      __return_value = LibGst.stream_get_stream_id(@pointer.as(LibGst::Stream*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def stream_type
      __return_value = LibGst.stream_get_stream_type(@pointer.as(LibGst::Stream*))
      __return_value
    end

    def tags
      __return_value = LibGst.stream_get_tags(@pointer.as(LibGst::Stream*))
      Gst::TagList.new(__return_value) if __return_value
    end

    def caps=(caps)
      LibGst.stream_set_caps(@pointer.as(LibGst::Stream*), caps ? caps.to_unsafe.as(LibGst::Caps*) : nil)
      nil
    end

    def stream_flags=(flags : Gst::StreamFlags)
      LibGst.stream_set_stream_flags(@pointer.as(LibGst::Stream*), flags)
      nil
    end

    def stream_type=(stream_type : Gst::StreamType)
      LibGst.stream_set_stream_type(@pointer.as(LibGst::Stream*), stream_type)
      nil
    end

    def tags=(tags)
      LibGst.stream_set_tags(@pointer.as(LibGst::Stream*), tags ? tags.to_unsafe.as(LibGst::TagList*) : nil)
      nil
    end

  end
end

