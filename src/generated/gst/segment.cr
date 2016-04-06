module Gst
  class Segment
    include GObject::WrappedType

    def initialize(@gst_segment)
    end

    def to_unsafe
      @gst_segment.not_nil!
    end

    def self.new_internal
      __return_value = LibGst.segment_new
      Gst::Segment.new(__return_value)
    end

    def clip(format, start, stop, clip_start, clip_stop)
      __return_value = LibGst.segment_clip((to_unsafe as LibGst::Segment*), format, UInt64.new(start), UInt64.new(stop), UInt64.new(clip_start), UInt64.new(clip_stop))
      __return_value
    end

    def copy
      __return_value = LibGst.segment_copy((to_unsafe as LibGst::Segment*))
      Gst::Segment.new(__return_value)
    end

    def copy_into(dest)
      __return_value = LibGst.segment_copy_into((to_unsafe as LibGst::Segment*), (dest.to_unsafe as LibGst::Segment*))
      __return_value
    end

    def do_seek(rate, format, flags, start_type, start, stop_type, stop, update)
      __return_value = LibGst.segment_do_seek((to_unsafe as LibGst::Segment*), Float64.new(rate), format, flags, start_type, UInt64.new(start), stop_type, UInt64.new(stop), update)
      __return_value
    end

    def free
      __return_value = LibGst.segment_free((to_unsafe as LibGst::Segment*))
      __return_value
    end

    def init(format)
      __return_value = LibGst.segment_init((to_unsafe as LibGst::Segment*), format)
      __return_value
    end

    def equal?(s1)
      __return_value = LibGst.segment_is_equal((to_unsafe as LibGst::Segment*), (s1.to_unsafe as LibGst::Segment*))
      __return_value
    end

    def offset_running_time(format, offset)
      __return_value = LibGst.segment_offset_running_time((to_unsafe as LibGst::Segment*), format, Int64.new(offset))
      __return_value
    end

    def set_running_time(format, running_time)
      __return_value = LibGst.segment_set_running_time((to_unsafe as LibGst::Segment*), format, UInt64.new(running_time))
      __return_value
    end

    def to_position(format, running_time)
      __return_value = LibGst.segment_to_position((to_unsafe as LibGst::Segment*), format, UInt64.new(running_time))
      __return_value
    end

    def to_running_time(format, position)
      __return_value = LibGst.segment_to_running_time((to_unsafe as LibGst::Segment*), format, UInt64.new(position))
      __return_value
    end

    def to_running_time_full(format, position, running_time)
      __return_value = LibGst.segment_to_running_time_full((to_unsafe as LibGst::Segment*), format, UInt64.new(position), running_time)
      __return_value
    end

    def to_stream_time(format, position)
      __return_value = LibGst.segment_to_stream_time((to_unsafe as LibGst::Segment*), format, UInt64.new(position))
      __return_value
    end

  end
end

