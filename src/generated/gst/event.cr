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

    @pointer : Void*
    def initialize(pointer : LibGst::Event*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::Event*)
    end

    def self.new_buffer_size(format : Gst::Format, minsize, maxsize, async) : self
      __return_value = LibGst.event_new_buffer_size(format, Int64.new(minsize), Int64.new(maxsize), async)
      cast Gst::Event.new(__return_value)
    end

    def self.new_caps(caps) : self
      __return_value = LibGst.event_new_caps(caps.to_unsafe.as(LibGst::Caps*))
      cast Gst::Event.new(__return_value) if __return_value
    end

    def self.new_custom(type : Gst::EventType, structure) : self
      __return_value = LibGst.event_new_custom(type, structure.to_unsafe.as(LibGst::Structure*))
      cast Gst::Event.new(__return_value) if __return_value
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

    def self.new_qos(type : Gst::QOSType, proportion, diff, timestamp) : self
      __return_value = LibGst.event_new_qos(type, Float64.new(proportion), Int64.new(diff), UInt64.new(timestamp))
      cast Gst::Event.new(__return_value) if __return_value
    end

    def self.new_reconfigure : self
      __return_value = LibGst.event_new_reconfigure
      cast Gst::Event.new(__return_value)
    end

    def self.new_seek(rate, format : Gst::Format, flags : Gst::SeekFlags, start_type : Gst::SeekType, start, stop_type : Gst::SeekType, stop) : self
      __return_value = LibGst.event_new_seek(Float64.new(rate), format, flags, start_type, Int64.new(start), stop_type, Int64.new(stop))
      cast Gst::Event.new(__return_value) if __return_value
    end

    def self.new_segment(segment) : self
      __return_value = LibGst.event_new_segment(segment.to_unsafe.as(LibGst::Segment*))
      cast Gst::Event.new(__return_value) if __return_value
    end

    def self.new_segment_done(format : Gst::Format, position) : self
      __return_value = LibGst.event_new_segment_done(format, Int64.new(position))
      cast Gst::Event.new(__return_value)
    end

    def self.new_select_streams(streams) : self
      __return_value = LibGst.event_new_select_streams(streams)
      cast Gst::Event.new(__return_value)
    end

    def self.new_sink_message(name, msg) : self
      __return_value = LibGst.event_new_sink_message(name.to_unsafe, msg.to_unsafe.as(LibGst::Message*))
      cast Gst::Event.new(__return_value)
    end

    def self.new_step(format : Gst::Format, amount, rate, flush, intermediate) : self
      __return_value = LibGst.event_new_step(format, UInt64.new(amount), Float64.new(rate), flush, intermediate)
      cast Gst::Event.new(__return_value) if __return_value
    end

    def self.new_stream_collection(collection) : self
      __return_value = LibGst.event_new_stream_collection(collection.to_unsafe.as(LibGst::StreamCollection*))
      cast Gst::Event.new(__return_value)
    end

    def self.new_stream_group_done(group_id) : self
      __return_value = LibGst.event_new_stream_group_done(UInt32.new(group_id))
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
      LibGst.event_copy_segment(@pointer.as(LibGst::Event*), segment.to_unsafe.as(LibGst::Segment*))
      nil
    end

    def running_time_offset
      __return_value = LibGst.event_get_running_time_offset(@pointer.as(LibGst::Event*))
      __return_value
    end

    def seqnum
      __return_value = LibGst.event_get_seqnum(@pointer.as(LibGst::Event*))
      __return_value
    end

    def structure
      __return_value = LibGst.event_get_structure(@pointer.as(LibGst::Event*))
      Gst::Structure.new(__return_value) if __return_value
    end

    def has_name(name)
      __return_value = LibGst.event_has_name(@pointer.as(LibGst::Event*), name.to_unsafe)
      __return_value
    end

    def parse_buffer_size(format : Gst::Format, minsize, maxsize, async)
      LibGst.event_parse_buffer_size(@pointer.as(LibGst::Event*), format, minsize, maxsize, async)
      nil
    end

    def parse_caps(caps)
      LibGst.event_parse_caps(@pointer.as(LibGst::Event*), caps)
      nil
    end

    def parse_flush_stop(reset_time)
      LibGst.event_parse_flush_stop(@pointer.as(LibGst::Event*), reset_time)
      nil
    end

    def parse_gap(timestamp, duration)
      LibGst.event_parse_gap(@pointer.as(LibGst::Event*), timestamp, duration)
      nil
    end

    def parse_group_id(group_id)
      __return_value = LibGst.event_parse_group_id(@pointer.as(LibGst::Event*), group_id)
      __return_value
    end

    def parse_latency(latency)
      LibGst.event_parse_latency(@pointer.as(LibGst::Event*), latency)
      nil
    end

    def parse_protection(system_id, data, origin)
      LibGst.event_parse_protection(@pointer.as(LibGst::Event*), system_id, data, origin)
      nil
    end

    def parse_qos(type : Gst::QOSType, proportion, diff, timestamp)
      LibGst.event_parse_qos(@pointer.as(LibGst::Event*), type, proportion, diff, timestamp)
      nil
    end

    def parse_seek(rate, format : Gst::Format, flags : Gst::SeekFlags, start_type : Gst::SeekType, start, stop_type : Gst::SeekType, stop)
      LibGst.event_parse_seek(@pointer.as(LibGst::Event*), rate, format, flags, start_type, start, stop_type, stop)
      nil
    end

    def parse_segment(segment)
      LibGst.event_parse_segment(@pointer.as(LibGst::Event*), segment)
      nil
    end

    def parse_segment_done(format : Gst::Format?, position)
      LibGst.event_parse_segment_done(@pointer.as(LibGst::Event*), format, position)
      nil
    end

    def parse_select_streams(streams)
      LibGst.event_parse_select_streams(@pointer.as(LibGst::Event*), streams)
      nil
    end

    def parse_sink_message(msg)
      LibGst.event_parse_sink_message(@pointer.as(LibGst::Event*), msg)
      nil
    end

    def parse_step(format : Gst::Format?, amount, rate, flush, intermediate)
      LibGst.event_parse_step(@pointer.as(LibGst::Event*), format, amount, rate, flush, intermediate)
      nil
    end

    def parse_stream(stream)
      LibGst.event_parse_stream(@pointer.as(LibGst::Event*), stream)
      nil
    end

    def parse_stream_collection(collection)
      LibGst.event_parse_stream_collection(@pointer.as(LibGst::Event*), collection)
      nil
    end

    def parse_stream_flags(flags : Gst::StreamFlags)
      LibGst.event_parse_stream_flags(@pointer.as(LibGst::Event*), flags)
      nil
    end

    def parse_stream_group_done(group_id)
      LibGst.event_parse_stream_group_done(@pointer.as(LibGst::Event*), group_id)
      nil
    end

    def parse_stream_start(stream_id)
      LibGst.event_parse_stream_start(@pointer.as(LibGst::Event*), stream_id)
      nil
    end

    def parse_tag(taglist)
      LibGst.event_parse_tag(@pointer.as(LibGst::Event*), taglist)
      nil
    end

    def parse_toc(toc, updated)
      LibGst.event_parse_toc(@pointer.as(LibGst::Event*), toc, updated)
      nil
    end

    def parse_toc_select(uid)
      LibGst.event_parse_toc_select(@pointer.as(LibGst::Event*), uid)
      nil
    end

    def group_id=(group_id)
      LibGst.event_set_group_id(@pointer.as(LibGst::Event*), UInt32.new(group_id))
      nil
    end

    def running_time_offset=(offset)
      LibGst.event_set_running_time_offset(@pointer.as(LibGst::Event*), Int64.new(offset))
      nil
    end

    def seqnum=(seqnum)
      LibGst.event_set_seqnum(@pointer.as(LibGst::Event*), UInt32.new(seqnum))
      nil
    end

    def stream=(stream)
      LibGst.event_set_stream(@pointer.as(LibGst::Event*), stream.to_unsafe.as(LibGst::Stream*))
      nil
    end

    def stream_flags=(flags : Gst::StreamFlags)
      LibGst.event_set_stream_flags(@pointer.as(LibGst::Event*), flags)
      nil
    end

    def writable_structure
      __return_value = LibGst.event_writable_structure(@pointer.as(LibGst::Event*))
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

