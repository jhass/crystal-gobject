module Gst
  class Query
    include GObject::WrappedType

    def self.new(mini_object : Gst::MiniObject|Nil = nil, type : Gst::QueryType|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(72, 0u8)
      new(ptr.as(LibGst::Query*)).tap do |object|
        object.mini_object = mini_object unless mini_object.nil?
        object.type = type unless type.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibGst::Query*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::Query*)
    end

    def self.new_accept_caps(caps) : self
      __return_value = LibGst.query_new_accept_caps(caps.to_unsafe.as(LibGst::Caps*))
      cast Gst::Query.new(__return_value)
    end

    def self.new_allocation(caps, need_pool) : self
      __return_value = LibGst.query_new_allocation(caps.to_unsafe.as(LibGst::Caps*), need_pool)
      cast Gst::Query.new(__return_value)
    end

    def self.new_buffering(format : Gst::Format) : self
      __return_value = LibGst.query_new_buffering(format)
      cast Gst::Query.new(__return_value)
    end

    def self.new_caps(filter) : self
      __return_value = LibGst.query_new_caps(filter.to_unsafe.as(LibGst::Caps*))
      cast Gst::Query.new(__return_value)
    end

    def self.new_context(context_type) : self
      __return_value = LibGst.query_new_context(context_type.to_unsafe)
      cast Gst::Query.new(__return_value)
    end

    def self.new_convert(src_format : Gst::Format, value, dest_format : Gst::Format) : self
      __return_value = LibGst.query_new_convert(src_format, Int64.new(value), dest_format)
      cast Gst::Query.new(__return_value)
    end

    def self.new_custom(type : Gst::QueryType, structure) : self
      __return_value = LibGst.query_new_custom(type, structure ? structure.to_unsafe.as(LibGst::Structure*) : nil)
      cast Gst::Query.new(__return_value)
    end

    def self.new_drain : self
      __return_value = LibGst.query_new_drain
      cast Gst::Query.new(__return_value)
    end

    def self.new_duration(format : Gst::Format) : self
      __return_value = LibGst.query_new_duration(format)
      cast Gst::Query.new(__return_value)
    end

    def self.new_formats : self
      __return_value = LibGst.query_new_formats
      cast Gst::Query.new(__return_value)
    end

    def self.new_latency : self
      __return_value = LibGst.query_new_latency
      cast Gst::Query.new(__return_value)
    end

    def self.new_position(format : Gst::Format) : self
      __return_value = LibGst.query_new_position(format)
      cast Gst::Query.new(__return_value)
    end

    def self.new_scheduling : self
      __return_value = LibGst.query_new_scheduling
      cast Gst::Query.new(__return_value)
    end

    def self.new_seeking(format : Gst::Format) : self
      __return_value = LibGst.query_new_seeking(format)
      cast Gst::Query.new(__return_value)
    end

    def self.new_segment(format : Gst::Format) : self
      __return_value = LibGst.query_new_segment(format)
      cast Gst::Query.new(__return_value)
    end

    def self.new_uri : self
      __return_value = LibGst.query_new_uri
      cast Gst::Query.new(__return_value)
    end

    def add_allocation_meta(api, params)
      LibGst.query_add_allocation_meta(@pointer.as(LibGst::Query*), UInt64.new(api), params ? params.to_unsafe.as(LibGst::Structure*) : nil)
      nil
    end

    def add_allocation_param(allocator, params)
      LibGst.query_add_allocation_param(@pointer.as(LibGst::Query*), allocator ? allocator.to_unsafe.as(LibGst::Allocator*) : nil, params ? params.to_unsafe.as(LibGst::AllocationParams*) : nil)
      nil
    end

    def add_allocation_pool(pool, size, min_buffers, max_buffers)
      LibGst.query_add_allocation_pool(@pointer.as(LibGst::Query*), pool ? pool.to_unsafe.as(LibGst::BufferPool*) : nil, UInt32.new(size), UInt32.new(min_buffers), UInt32.new(max_buffers))
      nil
    end

    def add_buffering_range(start, stop)
      __return_value = LibGst.query_add_buffering_range(@pointer.as(LibGst::Query*), Int64.new(start), Int64.new(stop))
      __return_value
    end

    def add_scheduling_mode(mode : Gst::PadMode)
      LibGst.query_add_scheduling_mode(@pointer.as(LibGst::Query*), mode)
      nil
    end

    def find_allocation_meta(api, index)
      __return_value = LibGst.query_find_allocation_meta(@pointer.as(LibGst::Query*), UInt64.new(api), index)
      __return_value
    end

    def n_allocation_metas
      __return_value = LibGst.query_get_n_allocation_metas(@pointer.as(LibGst::Query*))
      __return_value
    end

    def n_allocation_params
      __return_value = LibGst.query_get_n_allocation_params(@pointer.as(LibGst::Query*))
      __return_value
    end

    def n_allocation_pools
      __return_value = LibGst.query_get_n_allocation_pools(@pointer.as(LibGst::Query*))
      __return_value
    end

    def n_buffering_ranges
      __return_value = LibGst.query_get_n_buffering_ranges(@pointer.as(LibGst::Query*))
      __return_value
    end

    def n_scheduling_modes
      __return_value = LibGst.query_get_n_scheduling_modes(@pointer.as(LibGst::Query*))
      __return_value
    end

    def structure
      __return_value = LibGst.query_get_structure(@pointer.as(LibGst::Query*))
      Gst::Structure.new(__return_value)
    end

    def has_scheduling_mode(mode : Gst::PadMode)
      __return_value = LibGst.query_has_scheduling_mode(@pointer.as(LibGst::Query*), mode)
      __return_value
    end

    def has_scheduling_mode_with_flags(mode : Gst::PadMode, flags : Gst::SchedulingFlags)
      __return_value = LibGst.query_has_scheduling_mode_with_flags(@pointer.as(LibGst::Query*), mode, flags)
      __return_value
    end

    def parse_accept_caps(caps)
      LibGst.query_parse_accept_caps(@pointer.as(LibGst::Query*), caps)
      nil
    end

    def parse_accept_caps_result(result)
      LibGst.query_parse_accept_caps_result(@pointer.as(LibGst::Query*), result)
      nil
    end

    def parse_allocation(caps, need_pool)
      LibGst.query_parse_allocation(@pointer.as(LibGst::Query*), caps, need_pool)
      nil
    end

    def parse_buffering_percent(busy, percent)
      LibGst.query_parse_buffering_percent(@pointer.as(LibGst::Query*), busy, percent)
      nil
    end

    def parse_buffering_range(format : Gst::Format?, start, stop, estimated_total)
      LibGst.query_parse_buffering_range(@pointer.as(LibGst::Query*), format, start, stop, estimated_total)
      nil
    end

    def parse_buffering_stats(mode : Gst::BufferingMode?, avg_in, avg_out, buffering_left)
      LibGst.query_parse_buffering_stats(@pointer.as(LibGst::Query*), mode, avg_in, avg_out, buffering_left)
      nil
    end

    def parse_caps(filter)
      LibGst.query_parse_caps(@pointer.as(LibGst::Query*), filter)
      nil
    end

    def parse_caps_result(caps)
      LibGst.query_parse_caps_result(@pointer.as(LibGst::Query*), caps)
      nil
    end

    def parse_context(context)
      LibGst.query_parse_context(@pointer.as(LibGst::Query*), context)
      nil
    end

    def parse_context_type(context_type)
      __return_value = LibGst.query_parse_context_type(@pointer.as(LibGst::Query*), context_type)
      __return_value
    end

    def parse_convert(src_format : Gst::Format?, src_value, dest_format : Gst::Format?, dest_value)
      LibGst.query_parse_convert(@pointer.as(LibGst::Query*), src_format, src_value, dest_format, dest_value)
      nil
    end

    def parse_duration(format : Gst::Format?, duration)
      LibGst.query_parse_duration(@pointer.as(LibGst::Query*), format, duration)
      nil
    end

    def parse_latency(live, min_latency, max_latency)
      LibGst.query_parse_latency(@pointer.as(LibGst::Query*), live, min_latency, max_latency)
      nil
    end

    def parse_n_formats(n_formats)
      LibGst.query_parse_n_formats(@pointer.as(LibGst::Query*), n_formats)
      nil
    end

    def parse_nth_allocation_meta(index, params)
      __return_value = LibGst.query_parse_nth_allocation_meta(@pointer.as(LibGst::Query*), UInt32.new(index), params)
      __return_value
    end

    def parse_nth_allocation_param(index, allocator, params)
      LibGst.query_parse_nth_allocation_param(@pointer.as(LibGst::Query*), UInt32.new(index), allocator, params)
      nil
    end

    def parse_nth_allocation_pool(index, pool, size, min_buffers, max_buffers)
      LibGst.query_parse_nth_allocation_pool(@pointer.as(LibGst::Query*), UInt32.new(index), pool, size, min_buffers, max_buffers)
      nil
    end

    def parse_nth_buffering_range(index, start, stop)
      __return_value = LibGst.query_parse_nth_buffering_range(@pointer.as(LibGst::Query*), UInt32.new(index), start, stop)
      __return_value
    end

    def parse_nth_format(nth, format : Gst::Format?)
      LibGst.query_parse_nth_format(@pointer.as(LibGst::Query*), nth, format)
      nil
    end

    def parse_nth_scheduling_mode(index)
      __return_value = LibGst.query_parse_nth_scheduling_mode(@pointer.as(LibGst::Query*), UInt32.new(index))
      __return_value
    end

    def parse_position(format : Gst::Format?, cur)
      LibGst.query_parse_position(@pointer.as(LibGst::Query*), format, cur)
      nil
    end

    def parse_scheduling(flags : Gst::SchedulingFlags?, minsize, maxsize, align)
      LibGst.query_parse_scheduling(@pointer.as(LibGst::Query*), flags, minsize, maxsize, align)
      nil
    end

    def parse_seeking(format : Gst::Format?, seekable, segment_start, segment_end)
      LibGst.query_parse_seeking(@pointer.as(LibGst::Query*), format, seekable, segment_start, segment_end)
      nil
    end

    def parse_segment(rate, format : Gst::Format?, start_value, stop_value)
      LibGst.query_parse_segment(@pointer.as(LibGst::Query*), rate, format, start_value, stop_value)
      nil
    end

    def parse_uri(uri)
      LibGst.query_parse_uri(@pointer.as(LibGst::Query*), uri)
      nil
    end

    def parse_uri_redirection(uri)
      LibGst.query_parse_uri_redirection(@pointer.as(LibGst::Query*), uri)
      nil
    end

    def parse_uri_redirection_permanent(permanent)
      LibGst.query_parse_uri_redirection_permanent(@pointer.as(LibGst::Query*), permanent)
      nil
    end

    def remove_nth_allocation_meta(index)
      LibGst.query_remove_nth_allocation_meta(@pointer.as(LibGst::Query*), UInt32.new(index))
      nil
    end

    def remove_nth_allocation_param(index)
      LibGst.query_remove_nth_allocation_param(@pointer.as(LibGst::Query*), UInt32.new(index))
      nil
    end

    def remove_nth_allocation_pool(index)
      LibGst.query_remove_nth_allocation_pool(@pointer.as(LibGst::Query*), UInt32.new(index))
      nil
    end

    def accept_caps_result=(result)
      LibGst.query_set_accept_caps_result(@pointer.as(LibGst::Query*), result)
      nil
    end

    def set_buffering_percent(busy, percent)
      LibGst.query_set_buffering_percent(@pointer.as(LibGst::Query*), busy, Int32.new(percent))
      nil
    end

    def set_buffering_range(format : Gst::Format, start, stop, estimated_total)
      LibGst.query_set_buffering_range(@pointer.as(LibGst::Query*), format, Int64.new(start), Int64.new(stop), Int64.new(estimated_total))
      nil
    end

    def set_buffering_stats(mode : Gst::BufferingMode, avg_in, avg_out, buffering_left)
      LibGst.query_set_buffering_stats(@pointer.as(LibGst::Query*), mode, Int32.new(avg_in), Int32.new(avg_out), Int64.new(buffering_left))
      nil
    end

    def caps_result=(caps)
      LibGst.query_set_caps_result(@pointer.as(LibGst::Query*), caps.to_unsafe.as(LibGst::Caps*))
      nil
    end

    def context=(context)
      LibGst.query_set_context(@pointer.as(LibGst::Query*), context.to_unsafe.as(LibGst::Context*))
      nil
    end

    def set_convert(src_format : Gst::Format, src_value, dest_format : Gst::Format, dest_value)
      LibGst.query_set_convert(@pointer.as(LibGst::Query*), src_format, Int64.new(src_value), dest_format, Int64.new(dest_value))
      nil
    end

    def set_duration(format : Gst::Format, duration)
      LibGst.query_set_duration(@pointer.as(LibGst::Query*), format, Int64.new(duration))
      nil
    end

    def set_formatsv(n_formats, formats)
      LibGst.query_set_formatsv(@pointer.as(LibGst::Query*), Int32.new(n_formats), formats)
      nil
    end

    def set_latency(live, min_latency, max_latency)
      LibGst.query_set_latency(@pointer.as(LibGst::Query*), live, UInt64.new(min_latency), UInt64.new(max_latency))
      nil
    end

    def set_nth_allocation_param(index, allocator, params)
      LibGst.query_set_nth_allocation_param(@pointer.as(LibGst::Query*), UInt32.new(index), allocator ? allocator.to_unsafe.as(LibGst::Allocator*) : nil, params ? params.to_unsafe.as(LibGst::AllocationParams*) : nil)
      nil
    end

    def set_nth_allocation_pool(index, pool, size, min_buffers, max_buffers)
      LibGst.query_set_nth_allocation_pool(@pointer.as(LibGst::Query*), UInt32.new(index), pool ? pool.to_unsafe.as(LibGst::BufferPool*) : nil, UInt32.new(size), UInt32.new(min_buffers), UInt32.new(max_buffers))
      nil
    end

    def set_position(format : Gst::Format, cur)
      LibGst.query_set_position(@pointer.as(LibGst::Query*), format, Int64.new(cur))
      nil
    end

    def set_scheduling(flags : Gst::SchedulingFlags, minsize, maxsize, align)
      LibGst.query_set_scheduling(@pointer.as(LibGst::Query*), flags, Int32.new(minsize), Int32.new(maxsize), Int32.new(align))
      nil
    end

    def set_seeking(format : Gst::Format, seekable, segment_start, segment_end)
      LibGst.query_set_seeking(@pointer.as(LibGst::Query*), format, seekable, Int64.new(segment_start), Int64.new(segment_end))
      nil
    end

    def set_segment(rate, format : Gst::Format, start_value, stop_value)
      LibGst.query_set_segment(@pointer.as(LibGst::Query*), Float64.new(rate), format, Int64.new(start_value), Int64.new(stop_value))
      nil
    end

    def uri=(uri)
      LibGst.query_set_uri(@pointer.as(LibGst::Query*), uri.to_unsafe)
      nil
    end

    def uri_redirection=(uri)
      LibGst.query_set_uri_redirection(@pointer.as(LibGst::Query*), uri.to_unsafe)
      nil
    end

    def uri_redirection_permanent=(permanent)
      LibGst.query_set_uri_redirection_permanent(@pointer.as(LibGst::Query*), permanent)
      nil
    end

    def writable_structure
      __return_value = LibGst.query_writable_structure(@pointer.as(LibGst::Query*))
      Gst::Structure.new(__return_value)
    end

    def mini_object
      Gst::MiniObject.new((to_unsafe.as(LibGst::Query*).value.mini_object))
    end

    def mini_object=(value : Gst::MiniObject)
      to_unsafe.as(LibGst::Query*).value.mini_object = value
    end

    def type
      (to_unsafe.as(LibGst::Query*).value.type)
    end

    def type=(value : Gst::QueryType)
      to_unsafe.as(LibGst::Query*).value.type = value
    end

  end
end

