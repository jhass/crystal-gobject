module Gst
  class Sample
    include GObject::WrappedType

    def initialize(@gst_sample)
    end

    def to_unsafe
      @gst_sample.not_nil!
    end

    def self.new_internal(buffer, caps, segment, info)
      __return_value = LibGst.sample_new(buffer && (buffer.to_unsafe as LibGst::Buffer*), caps && (caps.to_unsafe as LibGst::Caps*), segment && (segment.to_unsafe as LibGst::Segment*), info && (info.to_unsafe as LibGst::Structure*))
      Gst::Sample.new(__return_value)
    end

    def buffer
      __return_value = LibGst.sample_get_buffer((to_unsafe as LibGst::Sample*))
      Gst::Buffer.new(__return_value) if __return_value
    end

    def buffer_list
      __return_value = LibGst.sample_get_buffer_list((to_unsafe as LibGst::Sample*))
      Gst::BufferList.new(__return_value) if __return_value
    end

    def caps
      __return_value = LibGst.sample_get_caps((to_unsafe as LibGst::Sample*))
      Gst::Caps.new(__return_value) if __return_value
    end

    def info
      __return_value = LibGst.sample_get_info((to_unsafe as LibGst::Sample*))
      Gst::Structure.new(__return_value)
    end

    def segment
      __return_value = LibGst.sample_get_segment((to_unsafe as LibGst::Sample*))
      Gst::Segment.new(__return_value)
    end

    def buffer_list=(buffer_list)
      __return_value = LibGst.sample_set_buffer_list((to_unsafe as LibGst::Sample*), (buffer_list.to_unsafe as LibGst::BufferList*))
      __return_value
    end

  end
end

