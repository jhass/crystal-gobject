module Gst
  class Message
    include GObject::WrappedType

    def self.new(mini_object : Gst::MiniObject|Nil = nil, type : Gst::MessageType|Nil = nil, timestamp : UInt64|Nil = nil, src : Gst::Object|Nil = nil, seqnum : UInt32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(120, 0u8)
      new(ptr.as(LibGst::Message*)).tap do |object|
        object.mini_object = mini_object unless mini_object.nil?
        object.type = type unless type.nil?
        object.timestamp = timestamp unless timestamp.nil?
        object.src = src unless src.nil?
        object.seqnum = seqnum unless seqnum.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibGst::Message*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::Message*)
    end

    def self.new_application(src, structure) : self
      __return_value = LibGst.message_new_application(src ? src.to_unsafe.as(LibGst::Object*) : nil, structure.to_unsafe.as(LibGst::Structure*))
      cast Gst::Message.new(__return_value) if __return_value
    end

    def self.new_async_done(src, running_time) : self
      __return_value = LibGst.message_new_async_done(src ? src.to_unsafe.as(LibGst::Object*) : nil, UInt64.new(running_time))
      cast Gst::Message.new(__return_value)
    end

    def self.new_async_start(src) : self
      __return_value = LibGst.message_new_async_start(src ? src.to_unsafe.as(LibGst::Object*) : nil)
      cast Gst::Message.new(__return_value)
    end

    def self.new_buffering(src, percent) : self
      __return_value = LibGst.message_new_buffering(src ? src.to_unsafe.as(LibGst::Object*) : nil, Int32.new(percent))
      cast Gst::Message.new(__return_value) if __return_value
    end

    def self.new_clock_lost(src, clock) : self
      __return_value = LibGst.message_new_clock_lost(src ? src.to_unsafe.as(LibGst::Object*) : nil, clock.to_unsafe.as(LibGst::Clock*))
      cast Gst::Message.new(__return_value)
    end

    def self.new_clock_provide(src, clock, ready) : self
      __return_value = LibGst.message_new_clock_provide(src ? src.to_unsafe.as(LibGst::Object*) : nil, clock.to_unsafe.as(LibGst::Clock*), ready)
      cast Gst::Message.new(__return_value)
    end

    def self.new_custom(type : Gst::MessageType, src, structure) : self
      __return_value = LibGst.message_new_custom(type, src ? src.to_unsafe.as(LibGst::Object*) : nil, structure ? structure.to_unsafe.as(LibGst::Structure*) : nil)
      cast Gst::Message.new(__return_value) if __return_value
    end

    def self.new_device_added(src, device) : self
      __return_value = LibGst.message_new_device_added(src.to_unsafe.as(LibGst::Object*), device.to_unsafe.as(LibGst::Device*))
      cast Gst::Message.new(__return_value)
    end

    def self.new_device_changed(src, device, changed_device) : self
      __return_value = LibGst.message_new_device_changed(src.to_unsafe.as(LibGst::Object*), device.to_unsafe.as(LibGst::Device*), changed_device.to_unsafe.as(LibGst::Device*))
      cast Gst::Message.new(__return_value)
    end

    def self.new_device_removed(src, device) : self
      __return_value = LibGst.message_new_device_removed(src.to_unsafe.as(LibGst::Object*), device.to_unsafe.as(LibGst::Device*))
      cast Gst::Message.new(__return_value)
    end

    def self.new_duration_changed(src) : self
      __return_value = LibGst.message_new_duration_changed(src ? src.to_unsafe.as(LibGst::Object*) : nil)
      cast Gst::Message.new(__return_value)
    end

    def self.new_element(src, structure) : self
      __return_value = LibGst.message_new_element(src ? src.to_unsafe.as(LibGst::Object*) : nil, structure.to_unsafe.as(LibGst::Structure*))
      cast Gst::Message.new(__return_value) if __return_value
    end

    def self.new_eos(src) : self
      __return_value = LibGst.message_new_eos(src ? src.to_unsafe.as(LibGst::Object*) : nil)
      cast Gst::Message.new(__return_value)
    end

    def self.new_error(src, error, debug) : self
      __return_value = LibGst.message_new_error(src ? src.to_unsafe.as(LibGst::Object*) : nil, error, debug.to_unsafe)
      cast Gst::Message.new(__return_value)
    end

    def self.new_error_with_details(src, error, debug, details) : self
      __return_value = LibGst.message_new_error_with_details(src ? src.to_unsafe.as(LibGst::Object*) : nil, error, debug.to_unsafe, details ? details.to_unsafe.as(LibGst::Structure*) : nil)
      cast Gst::Message.new(__return_value) if __return_value
    end

    def self.new_have_context(src, context) : self
      __return_value = LibGst.message_new_have_context(src ? src.to_unsafe.as(LibGst::Object*) : nil, context.to_unsafe.as(LibGst::Context*))
      cast Gst::Message.new(__return_value)
    end

    def self.new_info(src, error, debug) : self
      __return_value = LibGst.message_new_info(src ? src.to_unsafe.as(LibGst::Object*) : nil, error, debug.to_unsafe)
      cast Gst::Message.new(__return_value)
    end

    def self.new_info_with_details(src, error, debug, details) : self
      __return_value = LibGst.message_new_info_with_details(src ? src.to_unsafe.as(LibGst::Object*) : nil, error, debug.to_unsafe, details ? details.to_unsafe.as(LibGst::Structure*) : nil)
      cast Gst::Message.new(__return_value) if __return_value
    end

    def self.new_latency(src) : self
      __return_value = LibGst.message_new_latency(src ? src.to_unsafe.as(LibGst::Object*) : nil)
      cast Gst::Message.new(__return_value)
    end

    def self.new_need_context(src, context_type) : self
      __return_value = LibGst.message_new_need_context(src ? src.to_unsafe.as(LibGst::Object*) : nil, context_type.to_unsafe)
      cast Gst::Message.new(__return_value)
    end

    def self.new_new_clock(src, clock) : self
      __return_value = LibGst.message_new_new_clock(src ? src.to_unsafe.as(LibGst::Object*) : nil, clock.to_unsafe.as(LibGst::Clock*))
      cast Gst::Message.new(__return_value)
    end

    def self.new_progress(src, type : Gst::ProgressType, code, text) : self
      __return_value = LibGst.message_new_progress(src.to_unsafe.as(LibGst::Object*), type, code.to_unsafe, text.to_unsafe)
      cast Gst::Message.new(__return_value) if __return_value
    end

    def self.new_property_notify(src, property_name, val) : self
      __return_value = LibGst.message_new_property_notify(src.to_unsafe.as(LibGst::Object*), property_name.to_unsafe, val ? val.to_unsafe.as(LibGObject::Value*) : nil)
      cast Gst::Message.new(__return_value)
    end

    def self.new_qos(src, live, running_time, stream_time, timestamp, duration) : self
      __return_value = LibGst.message_new_qos(src.to_unsafe.as(LibGst::Object*), live, UInt64.new(running_time), UInt64.new(stream_time), UInt64.new(timestamp), UInt64.new(duration))
      cast Gst::Message.new(__return_value)
    end

    def self.new_redirect(src, location, tag_list, entry_struct) : self
      __return_value = LibGst.message_new_redirect(src.to_unsafe.as(LibGst::Object*), location.to_unsafe, tag_list ? tag_list.to_unsafe.as(LibGst::TagList*) : nil, entry_struct ? entry_struct.to_unsafe.as(LibGst::Structure*) : nil)
      cast Gst::Message.new(__return_value)
    end

    def self.new_request_state(src, state : Gst::State) : self
      __return_value = LibGst.message_new_request_state(src ? src.to_unsafe.as(LibGst::Object*) : nil, state)
      cast Gst::Message.new(__return_value)
    end

    def self.new_reset_time(src, running_time) : self
      __return_value = LibGst.message_new_reset_time(src ? src.to_unsafe.as(LibGst::Object*) : nil, UInt64.new(running_time))
      cast Gst::Message.new(__return_value)
    end

    def self.new_segment_done(src, format : Gst::Format, position) : self
      __return_value = LibGst.message_new_segment_done(src ? src.to_unsafe.as(LibGst::Object*) : nil, format, Int64.new(position))
      cast Gst::Message.new(__return_value)
    end

    def self.new_segment_start(src, format : Gst::Format, position) : self
      __return_value = LibGst.message_new_segment_start(src ? src.to_unsafe.as(LibGst::Object*) : nil, format, Int64.new(position))
      cast Gst::Message.new(__return_value)
    end

    def self.new_state_changed(src, oldstate : Gst::State, newstate : Gst::State, pending : Gst::State) : self
      __return_value = LibGst.message_new_state_changed(src ? src.to_unsafe.as(LibGst::Object*) : nil, oldstate, newstate, pending)
      cast Gst::Message.new(__return_value)
    end

    def self.new_state_dirty(src) : self
      __return_value = LibGst.message_new_state_dirty(src ? src.to_unsafe.as(LibGst::Object*) : nil)
      cast Gst::Message.new(__return_value)
    end

    def self.new_step_done(src, format : Gst::Format, amount, rate, flush, intermediate, duration, eos) : self
      __return_value = LibGst.message_new_step_done(src.to_unsafe.as(LibGst::Object*), format, UInt64.new(amount), Float64.new(rate), flush, intermediate, UInt64.new(duration), eos)
      cast Gst::Message.new(__return_value)
    end

    def self.new_step_start(src, active, format : Gst::Format, amount, rate, flush, intermediate) : self
      __return_value = LibGst.message_new_step_start(src.to_unsafe.as(LibGst::Object*), active, format, UInt64.new(amount), Float64.new(rate), flush, intermediate)
      cast Gst::Message.new(__return_value)
    end

    def self.new_stream_collection(src, collection) : self
      __return_value = LibGst.message_new_stream_collection(src.to_unsafe.as(LibGst::Object*), collection.to_unsafe.as(LibGst::StreamCollection*))
      cast Gst::Message.new(__return_value)
    end

    def self.new_stream_start(src) : self
      __return_value = LibGst.message_new_stream_start(src ? src.to_unsafe.as(LibGst::Object*) : nil)
      cast Gst::Message.new(__return_value)
    end

    def self.new_stream_status(src, type : Gst::StreamStatusType, owner) : self
      __return_value = LibGst.message_new_stream_status(src.to_unsafe.as(LibGst::Object*), type, owner.to_unsafe.as(LibGst::Element*))
      cast Gst::Message.new(__return_value)
    end

    def self.new_streams_selected(src, collection) : self
      __return_value = LibGst.message_new_streams_selected(src.to_unsafe.as(LibGst::Object*), collection.to_unsafe.as(LibGst::StreamCollection*))
      cast Gst::Message.new(__return_value)
    end

    def self.new_structure_change(src, type : Gst::StructureChangeType, owner, busy) : self
      __return_value = LibGst.message_new_structure_change(src ? src.to_unsafe.as(LibGst::Object*) : nil, type, owner.to_unsafe.as(LibGst::Element*), busy)
      cast Gst::Message.new(__return_value)
    end

    def self.new_tag(src, tag_list) : self
      __return_value = LibGst.message_new_tag(src ? src.to_unsafe.as(LibGst::Object*) : nil, tag_list.to_unsafe.as(LibGst::TagList*))
      cast Gst::Message.new(__return_value)
    end

    def self.new_toc(src, toc, updated) : self
      __return_value = LibGst.message_new_toc(src.to_unsafe.as(LibGst::Object*), toc.to_unsafe.as(LibGst::Toc*), updated)
      cast Gst::Message.new(__return_value)
    end

    def self.new_warning(src, error, debug) : self
      __return_value = LibGst.message_new_warning(src ? src.to_unsafe.as(LibGst::Object*) : nil, error, debug.to_unsafe)
      cast Gst::Message.new(__return_value)
    end

    def self.new_warning_with_details(src, error, debug, details) : self
      __return_value = LibGst.message_new_warning_with_details(src ? src.to_unsafe.as(LibGst::Object*) : nil, error, debug.to_unsafe, details ? details.to_unsafe.as(LibGst::Structure*) : nil)
      cast Gst::Message.new(__return_value) if __return_value
    end

    def add_redirect_entry(location, tag_list, entry_struct)
      LibGst.message_add_redirect_entry(@pointer.as(LibGst::Message*), location.to_unsafe, tag_list ? tag_list.to_unsafe.as(LibGst::TagList*) : nil, entry_struct ? entry_struct.to_unsafe.as(LibGst::Structure*) : nil)
      nil
    end

    def num_redirect_entries
      __return_value = LibGst.message_get_num_redirect_entries(@pointer.as(LibGst::Message*))
      __return_value
    end

    def seqnum
      __return_value = LibGst.message_get_seqnum(@pointer.as(LibGst::Message*))
      __return_value
    end

    def stream_status_object
      __return_value = LibGst.message_get_stream_status_object(@pointer.as(LibGst::Message*))
      GObject::Value.new(__return_value) if __return_value
    end

    def structure
      __return_value = LibGst.message_get_structure(@pointer.as(LibGst::Message*))
      Gst::Structure.new(__return_value) if __return_value
    end

    def has_name(name)
      __return_value = LibGst.message_has_name(@pointer.as(LibGst::Message*), name.to_unsafe)
      __return_value
    end

    def parse_async_done(running_time)
      LibGst.message_parse_async_done(@pointer.as(LibGst::Message*), running_time)
      nil
    end

    def parse_buffering(percent)
      LibGst.message_parse_buffering(@pointer.as(LibGst::Message*), percent)
      nil
    end

    def parse_buffering_stats(mode : Gst::BufferingMode?, avg_in, avg_out, buffering_left)
      LibGst.message_parse_buffering_stats(@pointer.as(LibGst::Message*), mode, avg_in, avg_out, buffering_left)
      nil
    end

    def parse_clock_lost(clock)
      LibGst.message_parse_clock_lost(@pointer.as(LibGst::Message*), clock)
      nil
    end

    def parse_clock_provide(clock, ready)
      LibGst.message_parse_clock_provide(@pointer.as(LibGst::Message*), clock, ready)
      nil
    end

    def parse_context_type(context_type)
      __return_value = LibGst.message_parse_context_type(@pointer.as(LibGst::Message*), context_type)
      __return_value
    end

    def parse_device_added(device)
      LibGst.message_parse_device_added(@pointer.as(LibGst::Message*), device)
      nil
    end

    def parse_device_changed(device, changed_device)
      LibGst.message_parse_device_changed(@pointer.as(LibGst::Message*), device, changed_device)
      nil
    end

    def parse_device_removed(device)
      LibGst.message_parse_device_removed(@pointer.as(LibGst::Message*), device)
      nil
    end

    def parse_error(gerror, debug)
      LibGst.message_parse_error(@pointer.as(LibGst::Message*), gerror, debug)
      nil
    end

    def parse_error_details(structure)
      LibGst.message_parse_error_details(@pointer.as(LibGst::Message*), structure)
      nil
    end

    def parse_group_id(group_id)
      __return_value = LibGst.message_parse_group_id(@pointer.as(LibGst::Message*), group_id)
      __return_value
    end

    def parse_have_context(context)
      LibGst.message_parse_have_context(@pointer.as(LibGst::Message*), context)
      nil
    end

    def parse_info(gerror, debug)
      LibGst.message_parse_info(@pointer.as(LibGst::Message*), gerror, debug)
      nil
    end

    def parse_info_details(structure)
      LibGst.message_parse_info_details(@pointer.as(LibGst::Message*), structure)
      nil
    end

    def parse_new_clock(clock)
      LibGst.message_parse_new_clock(@pointer.as(LibGst::Message*), clock)
      nil
    end

    def parse_progress(type : Gst::ProgressType?, code, text)
      LibGst.message_parse_progress(@pointer.as(LibGst::Message*), type, code, text)
      nil
    end

    def parse_property_notify(object, property_name, property_value)
      LibGst.message_parse_property_notify(@pointer.as(LibGst::Message*), object, property_name, property_value)
      nil
    end

    def parse_qos(live, running_time, stream_time, timestamp, duration)
      LibGst.message_parse_qos(@pointer.as(LibGst::Message*), live, running_time, stream_time, timestamp, duration)
      nil
    end

    def parse_qos_stats(format : Gst::Format?, processed, dropped)
      LibGst.message_parse_qos_stats(@pointer.as(LibGst::Message*), format, processed, dropped)
      nil
    end

    def parse_qos_values(jitter, proportion, quality)
      LibGst.message_parse_qos_values(@pointer.as(LibGst::Message*), jitter, proportion, quality)
      nil
    end

    def parse_redirect_entry(entry_index, location, tag_list, entry_struct)
      LibGst.message_parse_redirect_entry(@pointer.as(LibGst::Message*), UInt64.new(entry_index), location, tag_list, entry_struct)
      nil
    end

    def parse_request_state(state : Gst::State?)
      LibGst.message_parse_request_state(@pointer.as(LibGst::Message*), state)
      nil
    end

    def parse_reset_time(running_time)
      LibGst.message_parse_reset_time(@pointer.as(LibGst::Message*), running_time)
      nil
    end

    def parse_segment_done(format : Gst::Format?, position)
      LibGst.message_parse_segment_done(@pointer.as(LibGst::Message*), format, position)
      nil
    end

    def parse_segment_start(format : Gst::Format?, position)
      LibGst.message_parse_segment_start(@pointer.as(LibGst::Message*), format, position)
      nil
    end

    def parse_state_changed(oldstate : Gst::State?, newstate : Gst::State?, pending : Gst::State?)
      LibGst.message_parse_state_changed(@pointer.as(LibGst::Message*), oldstate, newstate, pending)
      nil
    end

    def parse_step_done(format : Gst::Format?, amount, rate, flush, intermediate, duration, eos)
      LibGst.message_parse_step_done(@pointer.as(LibGst::Message*), format, amount, rate, flush, intermediate, duration, eos)
      nil
    end

    def parse_step_start(active, format : Gst::Format?, amount, rate, flush, intermediate)
      LibGst.message_parse_step_start(@pointer.as(LibGst::Message*), active, format, amount, rate, flush, intermediate)
      nil
    end

    def parse_stream_collection(collection)
      LibGst.message_parse_stream_collection(@pointer.as(LibGst::Message*), collection)
      nil
    end

    def parse_stream_status(type : Gst::StreamStatusType, owner)
      LibGst.message_parse_stream_status(@pointer.as(LibGst::Message*), type, owner)
      nil
    end

    def parse_streams_selected(collection)
      LibGst.message_parse_streams_selected(@pointer.as(LibGst::Message*), collection)
      nil
    end

    def parse_structure_change(type : Gst::StructureChangeType, owner, busy)
      LibGst.message_parse_structure_change(@pointer.as(LibGst::Message*), type, owner, busy)
      nil
    end

    def parse_tag(tag_list)
      LibGst.message_parse_tag(@pointer.as(LibGst::Message*), tag_list)
      nil
    end

    def parse_toc(toc, updated)
      LibGst.message_parse_toc(@pointer.as(LibGst::Message*), toc, updated)
      nil
    end

    def parse_warning(gerror, debug)
      LibGst.message_parse_warning(@pointer.as(LibGst::Message*), gerror, debug)
      nil
    end

    def parse_warning_details(structure)
      LibGst.message_parse_warning_details(@pointer.as(LibGst::Message*), structure)
      nil
    end

    def set_buffering_stats(mode : Gst::BufferingMode, avg_in, avg_out, buffering_left)
      LibGst.message_set_buffering_stats(@pointer.as(LibGst::Message*), mode, Int32.new(avg_in), Int32.new(avg_out), Int64.new(buffering_left))
      nil
    end

    def group_id=(group_id)
      LibGst.message_set_group_id(@pointer.as(LibGst::Message*), UInt32.new(group_id))
      nil
    end

    def set_qos_stats(format : Gst::Format, processed, dropped)
      LibGst.message_set_qos_stats(@pointer.as(LibGst::Message*), format, UInt64.new(processed), UInt64.new(dropped))
      nil
    end

    def set_qos_values(jitter, proportion, quality)
      LibGst.message_set_qos_values(@pointer.as(LibGst::Message*), Int64.new(jitter), Float64.new(proportion), Int32.new(quality))
      nil
    end

    def seqnum=(seqnum)
      LibGst.message_set_seqnum(@pointer.as(LibGst::Message*), UInt32.new(seqnum))
      nil
    end

    def stream_status_object=(object)
      LibGst.message_set_stream_status_object(@pointer.as(LibGst::Message*), object.to_unsafe.as(LibGObject::Value*))
      nil
    end

    def streams_selected_add(stream)
      LibGst.message_streams_selected_add(@pointer.as(LibGst::Message*), stream.to_unsafe.as(LibGst::Stream*))
      nil
    end

    def streams_selected_get_size
      __return_value = LibGst.message_streams_selected_get_size(@pointer.as(LibGst::Message*))
      __return_value
    end

    def streams_selected_get_stream(idx)
      __return_value = LibGst.message_streams_selected_get_stream(@pointer.as(LibGst::Message*), UInt32.new(idx))
      Gst::Stream.new(__return_value) if __return_value
    end

    def writable_structure
      __return_value = LibGst.message_writable_structure(@pointer.as(LibGst::Message*))
      Gst::Structure.new(__return_value)
    end

    def mini_object
      Gst::MiniObject.new((to_unsafe.as(LibGst::Message*).value.mini_object))
    end

    def mini_object=(value : Gst::MiniObject)
      to_unsafe.as(LibGst::Message*).value.mini_object = value
    end

    def type
      (to_unsafe.as(LibGst::Message*).value.type)
    end

    def type=(value : Gst::MessageType)
      to_unsafe.as(LibGst::Message*).value.type = value
    end

    def timestamp
      (to_unsafe.as(LibGst::Message*).value.timestamp)
    end

    def timestamp=(value : UInt64)
      to_unsafe.as(LibGst::Message*).value.timestamp = UInt64.new(value)
    end

    def src
      Gst::Object.new((to_unsafe.as(LibGst::Message*).value.src))
    end

    def src=(value : Gst::Object)
      to_unsafe.as(LibGst::Message*).value.src = value.to_unsafe.as(LibGst::Object*)
    end

    def seqnum
      (to_unsafe.as(LibGst::Message*).value.seqnum)
    end

    def seqnum=(value : UInt32)
      to_unsafe.as(LibGst::Message*).value.seqnum = UInt32.new(value)
    end

    def lock
      GLib::Mutex.new((to_unsafe.as(LibGst::Message*).value.lock))
    end

    def cond
      GLib::Cond.new((to_unsafe.as(LibGst::Message*).value.cond))
    end

  end
end

