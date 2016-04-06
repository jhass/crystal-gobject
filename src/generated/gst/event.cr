module Gst
  class Event
    include GObject::WrappedType

    def initialize(@gst_event)
    end

    def to_unsafe
      @gst_event.not_nil!
    end

    def self.new_buffer_size(format, minsize, maxsize, async)
      __return_value = LibGst.event_new_buffer_size(format, Int64.new(minsize), Int64.new(maxsize), async)
      Gst::Event.new(__return_value)
    end

    def self.new_caps(caps)
      __return_value = LibGst.event_new_caps((caps.to_unsafe as LibGst::Caps*))
      Gst::Event.new(__return_value)
    end

    def self.new_custom(type, structure)
      __return_value = LibGst.event_new_custom(type, (structure.to_unsafe as LibGst::Structure*))
      Gst::Event.new(__return_value)
    end

    def self.new_eos
      __return_value = LibGst.event_new_eos
      Gst::Event.new(__return_value)
    end

    def self.new_flush_start
      __return_value = LibGst.event_new_flush_start
      Gst::Event.new(__return_value)
    end

    def self.new_flush_stop(reset_time)
      __return_value = LibGst.event_new_flush_stop(reset_time)
      Gst::Event.new(__return_value)
    end

    def self.new_gap(timestamp, duration)
      __return_value = LibGst.event_new_gap(UInt64.new(timestamp), UInt64.new(duration))
      Gst::Event.new(__return_value)
    end

    def self.new_latency(latency)
      __return_value = LibGst.event_new_latency(UInt64.new(latency))
      Gst::Event.new(__return_value)
    end

    def self.new_navigation(structure)
      __return_value = LibGst.event_new_navigation((structure.to_unsafe as LibGst::Structure*))
      Gst::Event.new(__return_value)
    end

    def self.new_protection(system_id, data, origin)
      __return_value = LibGst.event_new_protection(system_id, (data.to_unsafe as LibGst::Buffer*), origin)
      Gst::Event.new(__return_value)
    end

    def self.new_qos(type, proportion, diff, timestamp)
      __return_value = LibGst.event_new_qos(type, Float64.new(proportion), Int64.new(diff), UInt64.new(timestamp))
      Gst::Event.new(__return_value)
    end

    def self.new_reconfigure
      __return_value = LibGst.event_new_reconfigure
      Gst::Event.new(__return_value)
    end

    def self.new_seek(rate, format, flags, start_type, start, stop_type, stop)
      __return_value = LibGst.event_new_seek(Float64.new(rate), format, flags, start_type, Int64.new(start), stop_type, Int64.new(stop))
      Gst::Event.new(__return_value)
    end

    def self.new_segment(segment)
      __return_value = LibGst.event_new_segment((segment.to_unsafe as LibGst::Segment*))
      Gst::Event.new(__return_value)
    end

    def self.new_segment_done(format, position)
      __return_value = LibGst.event_new_segment_done(format, Int64.new(position))
      Gst::Event.new(__return_value)
    end

    def self.new_sink_message(name, msg)
      __return_value = LibGst.event_new_sink_message(name, (msg.to_unsafe as LibGst::Message*))
      Gst::Event.new(__return_value)
    end

    def self.new_step(format, amount, rate, flush, intermediate)
      __return_value = LibGst.event_new_step(format, UInt64.new(amount), Float64.new(rate), flush, intermediate)
      Gst::Event.new(__return_value)
    end

    def self.new_stream_start(stream_id)
      __return_value = LibGst.event_new_stream_start(stream_id)
      Gst::Event.new(__return_value)
    end

    def self.new_tag(taglist)
      __return_value = LibGst.event_new_tag((taglist.to_unsafe as LibGst::TagList*))
      Gst::Event.new(__return_value)
    end

    def self.new_toc(toc, updated)
      __return_value = LibGst.event_new_toc((toc.to_unsafe as LibGst::Toc*), updated)
      Gst::Event.new(__return_value)
    end

    def self.new_toc_select(uid)
      __return_value = LibGst.event_new_toc_select(uid)
      Gst::Event.new(__return_value)
    end

    def copy_segment(segment)
      __return_value = LibGst.event_copy_segment((to_unsafe as LibGst::Event*), (segment.to_unsafe as LibGst::Segment*))
      __return_value
    end

    def running_time_offset
      __return_value = LibGst.event_get_running_time_offset((to_unsafe as LibGst::Event*))
      __return_value
    end

    def seqnum
      __return_value = LibGst.event_get_seqnum((to_unsafe as LibGst::Event*))
      __return_value
    end

    def structure
      __return_value = LibGst.event_get_structure((to_unsafe as LibGst::Event*))
      Gst::Structure.new(__return_value)
    end

    def has_name(name)
      __return_value = LibGst.event_has_name((to_unsafe as LibGst::Event*), name)
      __return_value
    end

    def parse_buffer_size(format, minsize, maxsize, async)
      __return_value = LibGst.event_parse_buffer_size((to_unsafe as LibGst::Event*), format, Int64.new(minsize), Int64.new(maxsize), async)
      __return_value
    end

    def parse_caps(caps)
      __return_value = LibGst.event_parse_caps((to_unsafe as LibGst::Event*), (caps.to_unsafe as LibGst::Caps*))
      __return_value
    end

    def parse_flush_stop(reset_time)
      __return_value = LibGst.event_parse_flush_stop((to_unsafe as LibGst::Event*), reset_time)
      __return_value
    end

    def parse_gap(timestamp, duration)
      __return_value = LibGst.event_parse_gap((to_unsafe as LibGst::Event*), UInt64.new(timestamp), UInt64.new(duration))
      __return_value
    end

    def parse_group_id(group_id)
      __return_value = LibGst.event_parse_group_id((to_unsafe as LibGst::Event*), UInt32.new(group_id))
      __return_value
    end

    def parse_latency(latency)
      __return_value = LibGst.event_parse_latency((to_unsafe as LibGst::Event*), UInt64.new(latency))
      __return_value
    end

    def parse_protection(system_id, data, origin)
      __return_value = LibGst.event_parse_protection((to_unsafe as LibGst::Event*), system_id, (data.to_unsafe as LibGst::Buffer*), origin && origin)
      __return_value
    end

    def parse_qos(type, proportion, diff, timestamp)
      __return_value = LibGst.event_parse_qos((to_unsafe as LibGst::Event*), type, Float64.new(proportion), Int64.new(diff), UInt64.new(timestamp))
      __return_value
    end

    def parse_seek(rate, format, flags, start_type, start, stop_type, stop)
      __return_value = LibGst.event_parse_seek((to_unsafe as LibGst::Event*), Float64.new(rate), format, flags, start_type, Int64.new(start), stop_type, Int64.new(stop))
      __return_value
    end

    def parse_segment(segment)
      __return_value = LibGst.event_parse_segment((to_unsafe as LibGst::Event*), (segment.to_unsafe as LibGst::Segment*))
      __return_value
    end

    def parse_segment_done(format, position)
      __return_value = LibGst.event_parse_segment_done((to_unsafe as LibGst::Event*), format, Int64.new(position))
      __return_value
    end

    def parse_sink_message(msg)
      __return_value = LibGst.event_parse_sink_message((to_unsafe as LibGst::Event*), (msg.to_unsafe as LibGst::Message*))
      __return_value
    end

    def parse_step(format, amount, rate, flush, intermediate)
      __return_value = LibGst.event_parse_step((to_unsafe as LibGst::Event*), format, UInt64.new(amount), Float64.new(rate), flush, intermediate)
      __return_value
    end

    def parse_stream_flags(flags)
      __return_value = LibGst.event_parse_stream_flags((to_unsafe as LibGst::Event*), flags)
      __return_value
    end

    def parse_stream_start(stream_id)
      __return_value = LibGst.event_parse_stream_start((to_unsafe as LibGst::Event*), stream_id)
      __return_value
    end

    def parse_tag(taglist)
      __return_value = LibGst.event_parse_tag((to_unsafe as LibGst::Event*), (taglist.to_unsafe as LibGst::TagList*))
      __return_value
    end

    def parse_toc(toc, updated)
      __return_value = LibGst.event_parse_toc((to_unsafe as LibGst::Event*), (toc.to_unsafe as LibGst::Toc*), updated)
      __return_value
    end

    def parse_toc_select(uid)
      __return_value = LibGst.event_parse_toc_select((to_unsafe as LibGst::Event*), uid)
      __return_value
    end

    def group_id=(group_id)
      __return_value = LibGst.event_set_group_id((to_unsafe as LibGst::Event*), UInt32.new(group_id))
      __return_value
    end

    def running_time_offset=(offset)
      __return_value = LibGst.event_set_running_time_offset((to_unsafe as LibGst::Event*), Int64.new(offset))
      __return_value
    end

    def seqnum=(seqnum)
      __return_value = LibGst.event_set_seqnum((to_unsafe as LibGst::Event*), UInt32.new(seqnum))
      __return_value
    end

    def stream_flags=(flags)
      __return_value = LibGst.event_set_stream_flags((to_unsafe as LibGst::Event*), flags)
      __return_value
    end

    def writable_structure
      __return_value = LibGst.event_writable_structure((to_unsafe as LibGst::Event*))
      Gst::Structure.new(__return_value)
    end

  end
end

