module Gst
  class Message
    include GObject::WrappedType

    def initialize @gst_message
    end

    def to_unsafe
      @gst_message.not_nil!
    end

    def self.new_application(src, structure)
      __return_value = LibGst.message_new_application((src.to_unsafe as LibGst::Object*), (structure.to_unsafe as LibGst::Structure*))
      Gst::Message.new(__return_value)
    end

    def self.new_async_done(src, running_time)
      __return_value = LibGst.message_new_async_done((src.to_unsafe as LibGst::Object*), UInt64.cast(running_time))
      Gst::Message.new(__return_value)
    end

    def self.new_async_start(src)
      __return_value = LibGst.message_new_async_start((src.to_unsafe as LibGst::Object*))
      Gst::Message.new(__return_value)
    end

    def self.new_buffering(src, percent)
      __return_value = LibGst.message_new_buffering((src.to_unsafe as LibGst::Object*), Int32.cast(percent))
      Gst::Message.new(__return_value)
    end

    def self.new_clock_lost(src, clock)
      __return_value = LibGst.message_new_clock_lost((src.to_unsafe as LibGst::Object*), (clock.to_unsafe as LibGst::Clock*))
      Gst::Message.new(__return_value)
    end

    def self.new_clock_provide(src, clock, ready)
      __return_value = LibGst.message_new_clock_provide((src.to_unsafe as LibGst::Object*), (clock.to_unsafe as LibGst::Clock*), Bool.cast(ready))
      Gst::Message.new(__return_value)
    end

    def self.new_custom(type, src, structure)
      __return_value = LibGst.message_new_custom(type, (src.to_unsafe as LibGst::Object*), structure && (structure.to_unsafe as LibGst::Structure*))
      Gst::Message.new(__return_value)
    end

    def self.new_device_added(src, device)
      __return_value = LibGst.message_new_device_added((src.to_unsafe as LibGst::Object*), (device.to_unsafe as LibGst::Device*))
      Gst::Message.new(__return_value)
    end

    def self.new_device_removed(src, device)
      __return_value = LibGst.message_new_device_removed((src.to_unsafe as LibGst::Object*), (device.to_unsafe as LibGst::Device*))
      Gst::Message.new(__return_value)
    end

    def self.new_duration_changed(src)
      __return_value = LibGst.message_new_duration_changed((src.to_unsafe as LibGst::Object*))
      Gst::Message.new(__return_value)
    end

    def self.new_element(src, structure)
      __return_value = LibGst.message_new_element((src.to_unsafe as LibGst::Object*), (structure.to_unsafe as LibGst::Structure*))
      Gst::Message.new(__return_value)
    end

    def self.new_eos(src)
      __return_value = LibGst.message_new_eos((src.to_unsafe as LibGst::Object*))
      Gst::Message.new(__return_value)
    end

    def self.new_error(src, error, debug)
      __return_value = LibGst.message_new_error((src.to_unsafe as LibGst::Object*), error, debug)
      Gst::Message.new(__return_value)
    end

    def self.new_have_context(src, context)
      __return_value = LibGst.message_new_have_context((src.to_unsafe as LibGst::Object*), (context.to_unsafe as LibGst::Context*))
      Gst::Message.new(__return_value)
    end

    def self.new_info(src, error, debug)
      __return_value = LibGst.message_new_info((src.to_unsafe as LibGst::Object*), error, debug)
      Gst::Message.new(__return_value)
    end

    def self.new_latency(src)
      __return_value = LibGst.message_new_latency((src.to_unsafe as LibGst::Object*))
      Gst::Message.new(__return_value)
    end

    def self.new_need_context(src, context_type)
      __return_value = LibGst.message_new_need_context((src.to_unsafe as LibGst::Object*), context_type)
      Gst::Message.new(__return_value)
    end

    def self.new_new_clock(src, clock)
      __return_value = LibGst.message_new_new_clock((src.to_unsafe as LibGst::Object*), (clock.to_unsafe as LibGst::Clock*))
      Gst::Message.new(__return_value)
    end

    def self.new_progress(src, type, code, text)
      __return_value = LibGst.message_new_progress((src.to_unsafe as LibGst::Object*), type, code, text)
      Gst::Message.new(__return_value)
    end

    def self.new_qos(src, live, running_time, stream_time, timestamp, duration)
      __return_value = LibGst.message_new_qos((src.to_unsafe as LibGst::Object*), Bool.cast(live), UInt64.cast(running_time), UInt64.cast(stream_time), UInt64.cast(timestamp), UInt64.cast(duration))
      Gst::Message.new(__return_value)
    end

    def self.new_request_state(src, state)
      __return_value = LibGst.message_new_request_state((src.to_unsafe as LibGst::Object*), state)
      Gst::Message.new(__return_value)
    end

    def self.new_reset_time(src, running_time)
      __return_value = LibGst.message_new_reset_time((src.to_unsafe as LibGst::Object*), UInt64.cast(running_time))
      Gst::Message.new(__return_value)
    end

    def self.new_segment_done(src, format, position)
      __return_value = LibGst.message_new_segment_done((src.to_unsafe as LibGst::Object*), format, Int64.cast(position))
      Gst::Message.new(__return_value)
    end

    def self.new_segment_start(src, format, position)
      __return_value = LibGst.message_new_segment_start((src.to_unsafe as LibGst::Object*), format, Int64.cast(position))
      Gst::Message.new(__return_value)
    end

    def self.new_state_changed(src, oldstate, newstate, pending)
      __return_value = LibGst.message_new_state_changed((src.to_unsafe as LibGst::Object*), oldstate, newstate, pending)
      Gst::Message.new(__return_value)
    end

    def self.new_state_dirty(src)
      __return_value = LibGst.message_new_state_dirty((src.to_unsafe as LibGst::Object*))
      Gst::Message.new(__return_value)
    end

    def self.new_step_done(src, format, amount, rate, flush, intermediate, duration, eos)
      __return_value = LibGst.message_new_step_done((src.to_unsafe as LibGst::Object*), format, UInt64.cast(amount), Float64.cast(rate), Bool.cast(flush), Bool.cast(intermediate), UInt64.cast(duration), Bool.cast(eos))
      Gst::Message.new(__return_value)
    end

    def self.new_step_start(src, active, format, amount, rate, flush, intermediate)
      __return_value = LibGst.message_new_step_start((src.to_unsafe as LibGst::Object*), Bool.cast(active), format, UInt64.cast(amount), Float64.cast(rate), Bool.cast(flush), Bool.cast(intermediate))
      Gst::Message.new(__return_value)
    end

    def self.new_stream_start(src)
      __return_value = LibGst.message_new_stream_start((src.to_unsafe as LibGst::Object*))
      Gst::Message.new(__return_value)
    end

    def self.new_stream_status(src, type, owner)
      __return_value = LibGst.message_new_stream_status((src.to_unsafe as LibGst::Object*), type, (owner.to_unsafe as LibGst::Element*))
      Gst::Message.new(__return_value)
    end

    def self.new_structure_change(src, type, owner, busy)
      __return_value = LibGst.message_new_structure_change((src.to_unsafe as LibGst::Object*), type, (owner.to_unsafe as LibGst::Element*), Bool.cast(busy))
      Gst::Message.new(__return_value)
    end

    def self.new_tag(src, tag_list)
      __return_value = LibGst.message_new_tag((src.to_unsafe as LibGst::Object*), (tag_list.to_unsafe as LibGst::TagList*))
      Gst::Message.new(__return_value)
    end

    def self.new_toc(src, toc, updated)
      __return_value = LibGst.message_new_toc((src.to_unsafe as LibGst::Object*), (toc.to_unsafe as LibGst::Toc*), Bool.cast(updated))
      Gst::Message.new(__return_value)
    end

    def self.new_warning(src, error, debug)
      __return_value = LibGst.message_new_warning((src.to_unsafe as LibGst::Object*), error, debug)
      Gst::Message.new(__return_value)
    end

    def seqnum
      __return_value = LibGst.message_get_seqnum((to_unsafe as LibGst::Message*))
      __return_value
    end

    def stream_status_object
      __return_value = LibGst.message_get_stream_status_object((to_unsafe as LibGst::Message*))
      GObject::Value.new(__return_value)
    end

    def structure
      __return_value = LibGst.message_get_structure((to_unsafe as LibGst::Message*))
      Gst::Structure.new(__return_value)
    end

    def has_name(name)
      __return_value = LibGst.message_has_name((to_unsafe as LibGst::Message*), name)
      __return_value
    end

    def parse_async_done(running_time)
      __return_value = LibGst.message_parse_async_done((to_unsafe as LibGst::Message*), UInt64.cast(running_time))
      __return_value
    end

    def parse_buffering(percent)
      __return_value = LibGst.message_parse_buffering((to_unsafe as LibGst::Message*), Int32.cast(percent))
      __return_value
    end

    def parse_buffering_stats(mode, avg_in, avg_out, buffering_left)
      __return_value = LibGst.message_parse_buffering_stats((to_unsafe as LibGst::Message*), mode, Int32.cast(avg_in), Int32.cast(avg_out), Int64.cast(buffering_left))
      __return_value
    end

    def parse_clock_lost(clock)
      __return_value = LibGst.message_parse_clock_lost((to_unsafe as LibGst::Message*), (clock.to_unsafe as LibGst::Clock*))
      __return_value
    end

    def parse_clock_provide(clock, ready)
      __return_value = LibGst.message_parse_clock_provide((to_unsafe as LibGst::Message*), (clock.to_unsafe as LibGst::Clock*), Bool.cast(ready))
      __return_value
    end

    def parse_context_type(context_type)
      __return_value = LibGst.message_parse_context_type((to_unsafe as LibGst::Message*), context_type)
      __return_value
    end

    def parse_device_added(device)
      __return_value = LibGst.message_parse_device_added((to_unsafe as LibGst::Message*), (device.to_unsafe as LibGst::Device*))
      __return_value
    end

    def parse_device_removed(device)
      __return_value = LibGst.message_parse_device_removed((to_unsafe as LibGst::Message*), (device.to_unsafe as LibGst::Device*))
      __return_value
    end

    def parse_error(gerror, debug)
      __return_value = LibGst.message_parse_error((to_unsafe as LibGst::Message*), gerror, debug)
      __return_value
    end

    def parse_group_id(group_id)
      __return_value = LibGst.message_parse_group_id((to_unsafe as LibGst::Message*), UInt32.cast(group_id))
      __return_value
    end

    def parse_have_context(context)
      __return_value = LibGst.message_parse_have_context((to_unsafe as LibGst::Message*), (context.to_unsafe as LibGst::Context*))
      __return_value
    end

    def parse_info(gerror, debug)
      __return_value = LibGst.message_parse_info((to_unsafe as LibGst::Message*), gerror, debug)
      __return_value
    end

    def parse_new_clock(clock)
      __return_value = LibGst.message_parse_new_clock((to_unsafe as LibGst::Message*), (clock.to_unsafe as LibGst::Clock*))
      __return_value
    end

    def parse_progress(type, code, text)
      __return_value = LibGst.message_parse_progress((to_unsafe as LibGst::Message*), type, code, text)
      __return_value
    end

    def parse_qos(live, running_time, stream_time, timestamp, duration)
      __return_value = LibGst.message_parse_qos((to_unsafe as LibGst::Message*), Bool.cast(live), UInt64.cast(running_time), UInt64.cast(stream_time), UInt64.cast(timestamp), UInt64.cast(duration))
      __return_value
    end

    def parse_qos_stats(format, processed, dropped)
      __return_value = LibGst.message_parse_qos_stats((to_unsafe as LibGst::Message*), format, UInt64.cast(processed), UInt64.cast(dropped))
      __return_value
    end

    def parse_qos_values(jitter, proportion, quality)
      __return_value = LibGst.message_parse_qos_values((to_unsafe as LibGst::Message*), Int64.cast(jitter), Float64.cast(proportion), Int32.cast(quality))
      __return_value
    end

    def parse_request_state(state)
      __return_value = LibGst.message_parse_request_state((to_unsafe as LibGst::Message*), state)
      __return_value
    end

    def parse_reset_time(running_time)
      __return_value = LibGst.message_parse_reset_time((to_unsafe as LibGst::Message*), UInt64.cast(running_time))
      __return_value
    end

    def parse_segment_done(format, position)
      __return_value = LibGst.message_parse_segment_done((to_unsafe as LibGst::Message*), format, Int64.cast(position))
      __return_value
    end

    def parse_segment_start(format, position)
      __return_value = LibGst.message_parse_segment_start((to_unsafe as LibGst::Message*), format, Int64.cast(position))
      __return_value
    end

    def parse_state_changed(oldstate, newstate, pending)
      __return_value = LibGst.message_parse_state_changed((to_unsafe as LibGst::Message*), oldstate, newstate, pending)
      __return_value
    end

    def parse_step_done(format, amount, rate, flush, intermediate, duration, eos)
      __return_value = LibGst.message_parse_step_done((to_unsafe as LibGst::Message*), format, UInt64.cast(amount), Float64.cast(rate), Bool.cast(flush), Bool.cast(intermediate), UInt64.cast(duration), Bool.cast(eos))
      __return_value
    end

    def parse_step_start(active, format, amount, rate, flush, intermediate)
      __return_value = LibGst.message_parse_step_start((to_unsafe as LibGst::Message*), Bool.cast(active), format, UInt64.cast(amount), Float64.cast(rate), Bool.cast(flush), Bool.cast(intermediate))
      __return_value
    end

    def parse_stream_status(type, owner)
      __return_value = LibGst.message_parse_stream_status((to_unsafe as LibGst::Message*), type, (owner.to_unsafe as LibGst::Element*))
      __return_value
    end

    def parse_structure_change(type, owner, busy)
      __return_value = LibGst.message_parse_structure_change((to_unsafe as LibGst::Message*), type, (owner.to_unsafe as LibGst::Element*), Bool.cast(busy))
      __return_value
    end

    def parse_tag(tag_list)
      __return_value = LibGst.message_parse_tag((to_unsafe as LibGst::Message*), (tag_list.to_unsafe as LibGst::TagList*))
      __return_value
    end

    def parse_toc(toc, updated)
      __return_value = LibGst.message_parse_toc((to_unsafe as LibGst::Message*), (toc.to_unsafe as LibGst::Toc*), Bool.cast(updated))
      __return_value
    end

    def parse_warning(gerror, debug)
      __return_value = LibGst.message_parse_warning((to_unsafe as LibGst::Message*), gerror, debug)
      __return_value
    end

    def set_buffering_stats(mode, avg_in, avg_out, buffering_left)
      __return_value = LibGst.message_set_buffering_stats((to_unsafe as LibGst::Message*), mode, Int32.cast(avg_in), Int32.cast(avg_out), Int64.cast(buffering_left))
      __return_value
    end

    def group_id=(group_id)
      __return_value = LibGst.message_set_group_id((to_unsafe as LibGst::Message*), UInt32.cast(group_id))
      __return_value
    end

    def set_qos_stats(format, processed, dropped)
      __return_value = LibGst.message_set_qos_stats((to_unsafe as LibGst::Message*), format, UInt64.cast(processed), UInt64.cast(dropped))
      __return_value
    end

    def set_qos_values(jitter, proportion, quality)
      __return_value = LibGst.message_set_qos_values((to_unsafe as LibGst::Message*), Int64.cast(jitter), Float64.cast(proportion), Int32.cast(quality))
      __return_value
    end

    def seqnum=(seqnum)
      __return_value = LibGst.message_set_seqnum((to_unsafe as LibGst::Message*), UInt32.cast(seqnum))
      __return_value
    end

    def stream_status_object=(object)
      __return_value = LibGst.message_set_stream_status_object((to_unsafe as LibGst::Message*), (object.to_unsafe as LibGObject::Value*))
      __return_value
    end

  end
end

