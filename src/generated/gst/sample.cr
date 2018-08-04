module Gst
  class Sample
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGst::Sample*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::Sample*)
    end

    def self.new(buffer, caps, segment, info) : self
      __return_value = LibGst.sample_new(buffer ? buffer.to_unsafe.as(LibGst::Buffer*) : nil, caps ? caps.to_unsafe.as(LibGst::Caps*) : nil, segment ? segment.to_unsafe.as(LibGst::Segment*) : nil, info ? info.to_unsafe.as(LibGst::Structure*) : nil)
      cast Gst::Sample.new(__return_value)
    end

    def buffer
      __return_value = LibGst.sample_get_buffer(@pointer.as(LibGst::Sample*))
      Gst::Buffer.new(__return_value) if __return_value
    end

    def buffer_list
      __return_value = LibGst.sample_get_buffer_list(@pointer.as(LibGst::Sample*))
      Gst::BufferList.new(__return_value) if __return_value
    end

    def caps
      __return_value = LibGst.sample_get_caps(@pointer.as(LibGst::Sample*))
      Gst::Caps.new(__return_value) if __return_value
    end

    def info
      __return_value = LibGst.sample_get_info(@pointer.as(LibGst::Sample*))
      Gst::Structure.new(__return_value) if __return_value
    end

    def segment
      __return_value = LibGst.sample_get_segment(@pointer.as(LibGst::Sample*))
      Gst::Segment.new(__return_value)
    end

    def buffer_list=(buffer_list)
      LibGst.sample_set_buffer_list(@pointer.as(LibGst::Sample*), buffer_list.to_unsafe.as(LibGst::BufferList*))
      nil
    end

  end
end

