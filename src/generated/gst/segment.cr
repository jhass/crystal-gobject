module Gst
  class Segment
    include GObject::WrappedType

    def self.new(flags : Gst::SegmentFlags|Nil = nil, rate : Float64|Nil = nil, applied_rate : Float64|Nil = nil, format : Gst::Format|Nil = nil, base : UInt64|Nil = nil, offset : UInt64|Nil = nil, start : UInt64|Nil = nil, stop : UInt64|Nil = nil, time : UInt64|Nil = nil, position : UInt64|Nil = nil, duration : UInt64|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(120, 0u8)
      new(ptr.as(LibGst::Segment*)).tap do |object|
        object.flags = flags unless flags.nil?
        object.rate = rate unless rate.nil?
        object.applied_rate = applied_rate unless applied_rate.nil?
        object.format = format unless format.nil?
        object.base = base unless base.nil?
        object.offset = offset unless offset.nil?
        object.start = start unless start.nil?
        object.stop = stop unless stop.nil?
        object.time = time unless time.nil?
        object.position = position unless position.nil?
        object.duration = duration unless duration.nil?
      end
    end

    @gst_segment : LibGst::Segment*?
    def initialize(@gst_segment : LibGst::Segment*)
    end

    def to_unsafe
      @gst_segment.not_nil!
    end

    def self.new : self
      __return_value = LibGst.segment_new
      cast Gst::Segment.new(__return_value)
    end

    def clip(format, start, stop, clip_start, clip_stop)
      __return_value = LibGst.segment_clip(to_unsafe.as(LibGst::Segment*), format, UInt64.new(start), UInt64.new(stop), UInt64.new(clip_start), UInt64.new(clip_stop))
      __return_value
    end

    def copy
      __return_value = LibGst.segment_copy(to_unsafe.as(LibGst::Segment*))
      Gst::Segment.new(__return_value)
    end

    def copy_into(dest)
      __return_value = LibGst.segment_copy_into(to_unsafe.as(LibGst::Segment*), dest.to_unsafe.as(LibGst::Segment*))
      __return_value
    end

    def do_seek(rate, format, flags, start_type, start, stop_type, stop, update)
      __return_value = LibGst.segment_do_seek(to_unsafe.as(LibGst::Segment*), Float64.new(rate), format, flags, start_type, UInt64.new(start), stop_type, UInt64.new(stop), update)
      __return_value
    end

    def free
      __return_value = LibGst.segment_free(to_unsafe.as(LibGst::Segment*))
      __return_value
    end

    def init(format)
      __return_value = LibGst.segment_init(to_unsafe.as(LibGst::Segment*), format)
      __return_value
    end

    def equal?(s1)
      __return_value = LibGst.segment_is_equal(to_unsafe.as(LibGst::Segment*), s1.to_unsafe.as(LibGst::Segment*))
      __return_value
    end

    def offset_running_time(format, offset)
      __return_value = LibGst.segment_offset_running_time(to_unsafe.as(LibGst::Segment*), format, Int64.new(offset))
      __return_value
    end

    def position_from_running_time(format, running_time)
      __return_value = LibGst.segment_position_from_running_time(to_unsafe.as(LibGst::Segment*), format, UInt64.new(running_time))
      __return_value
    end

    def position_from_running_time_full(format, running_time, position)
      __return_value = LibGst.segment_position_from_running_time_full(to_unsafe.as(LibGst::Segment*), format, UInt64.new(running_time), position)
      __return_value
    end

    def position_from_stream_time(format, stream_time)
      __return_value = LibGst.segment_position_from_stream_time(to_unsafe.as(LibGst::Segment*), format, UInt64.new(stream_time))
      __return_value
    end

    def position_from_stream_time_full(format, stream_time, position)
      __return_value = LibGst.segment_position_from_stream_time_full(to_unsafe.as(LibGst::Segment*), format, UInt64.new(stream_time), position)
      __return_value
    end

    def set_running_time(format, running_time)
      __return_value = LibGst.segment_set_running_time(to_unsafe.as(LibGst::Segment*), format, UInt64.new(running_time))
      __return_value
    end

    def to_position(format, running_time)
      __return_value = LibGst.segment_to_position(to_unsafe.as(LibGst::Segment*), format, UInt64.new(running_time))
      __return_value
    end

    def to_running_time(format, position)
      __return_value = LibGst.segment_to_running_time(to_unsafe.as(LibGst::Segment*), format, UInt64.new(position))
      __return_value
    end

    def to_running_time_full(format, position, running_time)
      __return_value = LibGst.segment_to_running_time_full(to_unsafe.as(LibGst::Segment*), format, UInt64.new(position), running_time)
      __return_value
    end

    def to_stream_time(format, position)
      __return_value = LibGst.segment_to_stream_time(to_unsafe.as(LibGst::Segment*), format, UInt64.new(position))
      __return_value
    end

    def to_stream_time_full(format, position, stream_time)
      __return_value = LibGst.segment_to_stream_time_full(to_unsafe.as(LibGst::Segment*), format, UInt64.new(position), stream_time)
      __return_value
    end

    def flags
      (to_unsafe.value.flags)
    end

    def flags=(value : Gst::SegmentFlags)
      to_unsafe.value.flags = value
    end

    def rate
      (to_unsafe.value.rate)
    end

    def rate=(value : Float64)
      to_unsafe.value.rate = Float64.new(value)
    end

    def applied_rate
      (to_unsafe.value.applied_rate)
    end

    def applied_rate=(value : Float64)
      to_unsafe.value.applied_rate = Float64.new(value)
    end

    def format
      (to_unsafe.value.format)
    end

    def format=(value : Gst::Format)
      to_unsafe.value.format = value
    end

    def base
      (to_unsafe.value.base)
    end

    def base=(value : UInt64)
      to_unsafe.value.base = UInt64.new(value)
    end

    def offset
      (to_unsafe.value.offset)
    end

    def offset=(value : UInt64)
      to_unsafe.value.offset = UInt64.new(value)
    end

    def start
      (to_unsafe.value.start)
    end

    def start=(value : UInt64)
      to_unsafe.value.start = UInt64.new(value)
    end

    def stop
      (to_unsafe.value.stop)
    end

    def stop=(value : UInt64)
      to_unsafe.value.stop = UInt64.new(value)
    end

    def time
      (to_unsafe.value.time)
    end

    def time=(value : UInt64)
      to_unsafe.value.time = UInt64.new(value)
    end

    def position
      (to_unsafe.value.position)
    end

    def position=(value : UInt64)
      to_unsafe.value.position = UInt64.new(value)
    end

    def duration
      (to_unsafe.value.duration)
    end

    def duration=(value : UInt64)
      to_unsafe.value.duration = UInt64.new(value)
    end

    def _gst_reserved
      PointerIterator.new((to_unsafe.value._gst_reserved)) {|__item| __item }
    end

  end
end

