module Gst
  class Event
    include GObject::WrappedType

    def self.new(mini_object : Gst::MiniObject|Nil = nil, type : Gst::EventType|Nil = nil, timestamp : UInt64|Nil = nil, seqnum : UInt32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(88, 0u8)
      new(ptr.as(LibGst::Event*)).tap do |object|
        object.mini_object = mini_object unless mini_object.nil?
        object.type = type unless type.nil?
        object.timestamp = timestamp unless timestamp.nil?
        object.seqnum = seqnum unless seqnum.nil?
      end
    end

    @gst_event : LibGst::Event*?
    def initialize(@gst_event : LibGst::Event*)
    end

    def to_unsafe
      @gst_event.not_nil!.as(Void*)
    end

    def self.new_buffer_size(format, minsize, maxsize, async) : self
      __return_value = LibGst.event_new_buffer_size(format, Int64.new(minsize), Int64.new(maxsize), async)
      cast Gst::Event.new(__return_value)
    end

    def self.new_caps(caps) : self
      __return_value = LibGst.event_new_caps(caps.to_unsafe.as(LibGst::Caps*))
      cast Gst::Event.new(__return_value)
    end

    def self.new_custom(type, structure) : self
      __return_value = LibGst.event_new_custom(type, structure.to_unsafe.as(LibGst::Structure*))
      cast Gst::Event.new(__return_value)
    end

    def self.new_eos : self
      __return_value = LibGst.event_new_eos
      cast Gst::Event.new(__return_value)
    end

    def self.new_flush_start : self
      __return_value = LibGst.event_new_flush_start
      cast Gst::Event.new(__return_value)
    end

    def self.new_flush_stop(reset_time) : self
      __return_value = LibGst.event_new_flush_stop(reset_time)
      cast Gst::Event.new(__return_value)
    end

    def self.new_gap(timestamp, duration) : self
      __return_value = LibGst.event_new_gap(UInt64.new(timestamp), UInt64.new(duration))
      cast Gst::Event.new(__return_value)
    end

    def self.new_latency(latency) : self
      __return_value = LibGst.event_new_latency(UInt64.new(latency))
      cast Gst::Event.new(__return_value)
    end

    def self.new_navigation(structure) : self
      __return_value = LibGst.event_new_navigation(structure.to_unsafe.as(LibGst::Structure*))
      cast Gst::Event.new(__return_value)
    end

    def self.new_protection(system_id, data, origin) : self
      __return_value = LibGst.event_new_protection(system_id.to_unsafe, data.to_unsafe.as(LibGst::Buffer*), origin.to_unsafe)
      cast Gst::Event.new(__return_value)
    end

    def self.new_qos(type, proportion, diff, timestamp) : self
      __return_value = LibGst.event_new_qos(type, Float64.new(proportion), Int64.new(diff), UInt64.new(timestamp))
      cast Gst::Event.new(__return_value)
    end

    def self.new_reconfigure : self
      __return_value = LibGst.event_new_reconfigure
      cast Gst::Event.new(__return_value)
    end

    def self.new_seek(rate, format, flags, start_type, start, stop_type, stop) : self
      __return_value = LibGst.event_new_seek(Float64.new(rate), format, flags, start_type, Int64.new(start), stop_type, Int64.new(stop))
      cast Gst::Event.new(__return_value)
    end

    def self.new_segment(segment) : self
      __return_value = LibGst.event_new_segment(segment.to_unsafe.as(LibGst::Segment*))
      cast Gst::Event.new(__return_value)
    end

    def self.new_segment_done(format, position) : self
      __return_value = LibGst.event_new_segment_done(format, Int64.new(position))
      cast Gst::Event.new(__return_value)
    end

    def self.new_sink_message(name, msg) : self
      __return_value = LibGst.event_new_sink_message(name.to_unsafe, msg.to_unsafe.as(LibGst::Message*))
      cast Gst::Event.new(__return_value)
    end

    def self.new_step(format, amount, rate, flush, intermediate) : self
      __return_value = LibGst.event_new_step(format, UInt64.new(amount), Float64.new(rate), flush, intermediate)
      cast Gst::Event.new(__return_value)
    end

    def self.new_stream_start(stream_id) : self
      __return_value = LibGst.event_new_stream_start(stream_id.to_unsafe)
      cast Gst::Event.new(__return_value)
    end

    def self.new_tag(taglist) : self
      __return_value = LibGst.event_new_tag(taglist.to_unsafe.as(LibGst::TagList*))
      cast Gst::Event.new(__return_value)
    end

    def self.new_toc(toc, updated) : self
      __return_value = LibGst.event_new_toc(toc.to_unsafe.as(LibGst::Toc*), updated)
      cast Gst::Event.new(__return_value)
    end

    def self.new_toc_select(uid) : self
      __return_value = LibGst.event_new_toc_select(uid.to_unsafe)
      cast Gst::Event.new(__return_value)
    end

    def copy_segment(segment)
      __return_value = LibGst.event_copy_segment(to_unsafe.as(LibGst::Event*), segment.to_unsafe.as(LibGst::Segment*))
      __return_value
    end

    def running_time_offset
      __return_value = LibGst.event_get_running_time_offset(to_unsafe.as(LibGst::Event*))
      __return_value
    end

    def seqnum
      __return_value = LibGst.event_get_seqnum(to_unsafe.as(LibGst::Event*))
      __return_value
    end

    def structure
      __return_value = LibGst.event_get_structure(to_unsafe.as(LibGst::Event*))
      Gst::Structure.new(__return_value)
    end

    def has_name(name)
      __return_value = LibGst.event_has_name(to_unsafe.as(LibGst::Event*), name.to_unsafe)
      __return_value
    end

    def parse_buffer_size(format, minsize, maxsize, async)
      __return_value = LibGst.event_parse_buffer_size(to_unsafe.as(LibGst::Event*), format, minsize, maxsize, async)
      __return_value
    end

    def parse_caps(caps)
      __return_value = LibGst.event_parse_caps(to_unsafe.as(LibGst::Event*), caps)
      __return_value
    end

    def parse_flush_stop(reset_time)
      __return_value = LibGst.event_parse_flush_stop(to_unsafe.as(LibGst::Event*), reset_time)
      __return_value
    end

    def parse_gap(timestamp, duration)
      __return_value = LibGst.event_parse_gap(to_unsafe.as(LibGst::Event*), timestamp, duration)
      __return_value
    end

    def parse_group_id(group_id)
      __return_value = LibGst.event_parse_group_id(to_unsafe.as(LibGst::Event*), group_id)
      __return_value
    end

    def parse_latency(latency)
      __return_value = LibGst.event_parse_latency(to_unsafe.as(LibGst::Event*), latency)
      __return_value
    end

    def parse_protection(system_id, data, origin)
      __return_value = LibGst.event_parse_protection(to_unsafe.as(LibGst::Event*), system_id, data, origin && origin.to_unsafe)
      __return_value
    end

    def parse_qos(type, proportion, diff, timestamp)
      __return_value = LibGst.event_parse_qos(to_unsafe.as(LibGst::Event*), type, proportion, diff, timestamp)
      __return_value
    end

    def parse_seek(rate, format, flags, start_type, start, stop_type, stop)
      __return_value = LibGst.event_parse_seek(to_unsafe.as(LibGst::Event*), rate, format, flags, start_type, start, stop_type, stop)
      __return_value
    end

    def parse_segment(segment)
      __return_value = LibGst.event_parse_segment(to_unsafe.as(LibGst::Event*), segment)
      __return_value
    end

    def parse_segment_done(format, position)
      __return_value = LibGst.event_parse_segment_done(to_unsafe.as(LibGst::Event*), format, position)
      __return_value
    end

    def parse_sink_message(msg)
      __return_value = LibGst.event_parse_sink_message(to_unsafe.as(LibGst::Event*), msg)
      __return_value
    end

    def parse_step(format, amount, rate, flush, intermediate)
      __return_value = LibGst.event_parse_step(to_unsafe.as(LibGst::Event*), format, amount, rate, flush, intermediate)
      __return_value
    end

    def parse_stream_flags(flags)
      __return_value = LibGst.event_parse_stream_flags(to_unsafe.as(LibGst::Event*), flags)
      __return_value
    end

    def parse_stream_start(stream_id)
      __return_value = LibGst.event_parse_stream_start(to_unsafe.as(LibGst::Event*), stream_id)
      __return_value
    end

    def parse_tag(taglist)
      __return_value = LibGst.event_parse_tag(to_unsafe.as(LibGst::Event*), taglist)
      __return_value
    end

    def parse_toc(toc, updated)
      __return_value = LibGst.event_parse_toc(to_unsafe.as(LibGst::Event*), toc, updated)
      __return_value
    end

    def parse_toc_select(uid)
      __return_value = LibGst.event_parse_toc_select(to_unsafe.as(LibGst::Event*), uid)
      __return_value
    end

    def group_id=(group_id)
      __return_value = LibGst.event_set_group_id(to_unsafe.as(LibGst::Event*), UInt32.new(group_id))
      __return_value
    end

    def running_time_offset=(offset)
      __return_value = LibGst.event_set_running_time_offset(to_unsafe.as(LibGst::Event*), Int64.new(offset))
      __return_value
    end

    def seqnum=(seqnum)
      __return_value = LibGst.event_set_seqnum(to_unsafe.as(LibGst::Event*), UInt32.new(seqnum))
      __return_value
    end

    def stream_flags=(flags)
      __return_value = LibGst.event_set_stream_flags(to_unsafe.as(LibGst::Event*), flags)
      __return_value
    end

    def writable_structure
      __return_value = LibGst.event_writable_structure(to_unsafe.as(LibGst::Event*))
      Gst::Structure.new(__return_value)
    end

    def mini_object
      Gst::MiniObject.new((to_unsafe.as(LibGst::Event*).value.mini_object))
    end

    def mini_object=(value : Gst::MiniObject)
      to_unsafe.as(LibGst::Event*).value.mini_object = value
    end

    def type
      (to_unsafe.as(LibGst::Event*).value.type)
    end

    def type=(value : Gst::EventType)
      to_unsafe.as(LibGst::Event*).value.type = value
    end

    def timestamp
      (to_unsafe.as(LibGst::Event*).value.timestamp)
    end

    def timestamp=(value : UInt64)
      to_unsafe.as(LibGst::Event*).value.timestamp = UInt64.new(value)
    end

    def seqnum
      (to_unsafe.as(LibGst::Event*).value.seqnum)
    end

    def seqnum=(value : UInt32)
      to_unsafe.as(LibGst::Event*).value.seqnum = UInt32.new(value)
    end

  end
end

