require "./object"

module Gst
  class Pad < Object
    @pointer : Void*
    def initialize(pointer : LibGst::Pad*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::Pad*)
    end

    def caps
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "caps", gvalue)
      Gst::Caps.cast(gvalue.object)
    end

    def direction
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "direction", gvalue)
      gvalue.enum
    end

    def offset
      gvalue = GObject::Value.new(GObject::Type::INT64)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "offset", gvalue)
      gvalue
    end

    def template
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "template", gvalue)
      Gst::PadTemplate.cast(gvalue.object)
    end

    def self.new(name, direction : Gst::PadDirection) : self
      __return_value = LibGst.pad_new(name ? name.to_unsafe : nil, direction)
      cast Gst::Pad.new(__return_value)
    end

    def self.new_from_static_template(templ, name) : self
      __return_value = LibGst.pad_new_from_static_template(templ.to_unsafe.as(LibGst::StaticPadTemplate*), name.to_unsafe)
      cast Gst::Pad.new(__return_value)
    end

    def self.new_from_template(templ, name) : self
      __return_value = LibGst.pad_new_from_template(templ.to_unsafe.as(LibGst::PadTemplate*), name ? name.to_unsafe : nil)
      cast Gst::Pad.new(__return_value)
    end

    def self.link_get_name(ret : Gst::PadLinkReturn)
      __return_value = LibGst.pad_link_get_name(ret)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def activate_mode(mode : Gst::PadMode, active)
      __return_value = LibGst.pad_activate_mode(@pointer.as(LibGst::Pad*), mode, active)
      __return_value
    end

    def add_probe(mask : Gst::PadProbeType, callback, user_data, destroy_data)
      __return_value = LibGst.pad_add_probe(@pointer.as(LibGst::Pad*), mask, callback, user_data ? user_data : nil, destroy_data)
      __return_value
    end

    def can_link(sinkpad)
      __return_value = LibGst.pad_can_link(@pointer.as(LibGst::Pad*), sinkpad.to_unsafe.as(LibGst::Pad*))
      __return_value
    end

    def chain(buffer)
      __return_value = LibGst.pad_chain(@pointer.as(LibGst::Pad*), buffer.to_unsafe.as(LibGst::Buffer*))
      __return_value
    end

    def chain_list(list)
      __return_value = LibGst.pad_chain_list(@pointer.as(LibGst::Pad*), list.to_unsafe.as(LibGst::BufferList*))
      __return_value
    end

    def check_reconfigure
      __return_value = LibGst.pad_check_reconfigure(@pointer.as(LibGst::Pad*))
      __return_value
    end

    def create_stream_id(parent, stream_id)
      __return_value = LibGst.pad_create_stream_id(@pointer.as(LibGst::Pad*), parent.to_unsafe.as(LibGst::Element*), stream_id ? stream_id.to_unsafe : nil)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def event_default(parent, event)
      __return_value = LibGst.pad_event_default(@pointer.as(LibGst::Pad*), parent ? parent.to_unsafe.as(LibGst::Object*) : nil, event.to_unsafe.as(LibGst::Event*))
      __return_value
    end

    def forward(forward, user_data)
      __return_value = LibGst.pad_forward(@pointer.as(LibGst::Pad*), forward, user_data ? user_data : nil)
      __return_value
    end

    def allowed_caps
      __return_value = LibGst.pad_get_allowed_caps(@pointer.as(LibGst::Pad*))
      Gst::Caps.new(__return_value) if __return_value
    end

    def current_caps
      __return_value = LibGst.pad_get_current_caps(@pointer.as(LibGst::Pad*))
      Gst::Caps.new(__return_value) if __return_value
    end

    def direction
      __return_value = LibGst.pad_get_direction(@pointer.as(LibGst::Pad*))
      __return_value
    end

    def element_private
      LibGst.pad_get_element_private(@pointer.as(LibGst::Pad*))
      nil
    end

    def last_flow_return
      __return_value = LibGst.pad_get_last_flow_return(@pointer.as(LibGst::Pad*))
      __return_value
    end

    def offset
      __return_value = LibGst.pad_get_offset(@pointer.as(LibGst::Pad*))
      __return_value
    end

    def pad_template
      __return_value = LibGst.pad_get_pad_template(@pointer.as(LibGst::Pad*))
      Gst::PadTemplate.new(__return_value) if __return_value
    end

    def pad_template_caps
      __return_value = LibGst.pad_get_pad_template_caps(@pointer.as(LibGst::Pad*))
      Gst::Caps.new(__return_value)
    end

    def parent_element
      __return_value = LibGst.pad_get_parent_element(@pointer.as(LibGst::Pad*))
      Gst::Element.new(__return_value) if __return_value
    end

    def peer
      __return_value = LibGst.pad_get_peer(@pointer.as(LibGst::Pad*))
      Gst::Pad.new(__return_value) if __return_value
    end

    def range(offset, size, buffer)
      __return_value = LibGst.pad_get_range(@pointer.as(LibGst::Pad*), UInt64.new(offset), UInt32.new(size), buffer)
      __return_value
    end

    def sticky_event(event_type : Gst::EventType, idx)
      __return_value = LibGst.pad_get_sticky_event(@pointer.as(LibGst::Pad*), event_type, UInt32.new(idx))
      Gst::Event.new(__return_value) if __return_value
    end

    def stream
      __return_value = LibGst.pad_get_stream(@pointer.as(LibGst::Pad*))
      Gst::Stream.new(__return_value) if __return_value
    end

    def stream_id
      __return_value = LibGst.pad_get_stream_id(@pointer.as(LibGst::Pad*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def task_state
      __return_value = LibGst.pad_get_task_state(@pointer.as(LibGst::Pad*))
      __return_value
    end

    def has_current_caps
      __return_value = LibGst.pad_has_current_caps(@pointer.as(LibGst::Pad*))
      __return_value
    end

    def active?
      __return_value = LibGst.pad_is_active(@pointer.as(LibGst::Pad*))
      __return_value
    end

    def blocked?
      __return_value = LibGst.pad_is_blocked(@pointer.as(LibGst::Pad*))
      __return_value
    end

    def blocking?
      __return_value = LibGst.pad_is_blocking(@pointer.as(LibGst::Pad*))
      __return_value
    end

    def linked?
      __return_value = LibGst.pad_is_linked(@pointer.as(LibGst::Pad*))
      __return_value
    end

    def iterate_internal_links
      __return_value = LibGst.pad_iterate_internal_links(@pointer.as(LibGst::Pad*))
      Gst::Iterator.new(__return_value) if __return_value
    end

    def iterate_internal_links_default(parent)
      __return_value = LibGst.pad_iterate_internal_links_default(@pointer.as(LibGst::Pad*), parent ? parent.to_unsafe.as(LibGst::Object*) : nil)
      Gst::Iterator.new(__return_value) if __return_value
    end

    def link(sinkpad)
      __return_value = LibGst.pad_link(@pointer.as(LibGst::Pad*), sinkpad.to_unsafe.as(LibGst::Pad*))
      __return_value
    end

    def link_full(sinkpad, flags : Gst::PadLinkCheck)
      __return_value = LibGst.pad_link_full(@pointer.as(LibGst::Pad*), sinkpad.to_unsafe.as(LibGst::Pad*), flags)
      __return_value
    end

    def link_maybe_ghosting(sink)
      __return_value = LibGst.pad_link_maybe_ghosting(@pointer.as(LibGst::Pad*), sink.to_unsafe.as(LibGst::Pad*))
      __return_value
    end

    def link_maybe_ghosting_full(sink, flags : Gst::PadLinkCheck)
      __return_value = LibGst.pad_link_maybe_ghosting_full(@pointer.as(LibGst::Pad*), sink.to_unsafe.as(LibGst::Pad*), flags)
      __return_value
    end

    def mark_reconfigure
      LibGst.pad_mark_reconfigure(@pointer.as(LibGst::Pad*))
      nil
    end

    def needs_reconfigure
      __return_value = LibGst.pad_needs_reconfigure(@pointer.as(LibGst::Pad*))
      __return_value
    end

    def pause_task
      __return_value = LibGst.pad_pause_task(@pointer.as(LibGst::Pad*))
      __return_value
    end

    def peer_query(query)
      __return_value = LibGst.pad_peer_query(@pointer.as(LibGst::Pad*), query.to_unsafe.as(LibGst::Query*))
      __return_value
    end

    def peer_query_accept_caps(caps)
      __return_value = LibGst.pad_peer_query_accept_caps(@pointer.as(LibGst::Pad*), caps.to_unsafe.as(LibGst::Caps*))
      __return_value
    end

    def peer_query_caps(filter)
      __return_value = LibGst.pad_peer_query_caps(@pointer.as(LibGst::Pad*), filter ? filter.to_unsafe.as(LibGst::Caps*) : nil)
      Gst::Caps.new(__return_value)
    end

    def peer_query_convert(src_format : Gst::Format, src_val, dest_format : Gst::Format, dest_val)
      __return_value = LibGst.pad_peer_query_convert(@pointer.as(LibGst::Pad*), src_format, Int64.new(src_val), dest_format, dest_val)
      __return_value
    end

    def peer_query_duration(format : Gst::Format, duration)
      __return_value = LibGst.pad_peer_query_duration(@pointer.as(LibGst::Pad*), format, duration)
      __return_value
    end

    def peer_query_position(format : Gst::Format, cur)
      __return_value = LibGst.pad_peer_query_position(@pointer.as(LibGst::Pad*), format, cur)
      __return_value
    end

    def proxy_query_accept_caps(query)
      __return_value = LibGst.pad_proxy_query_accept_caps(@pointer.as(LibGst::Pad*), query.to_unsafe.as(LibGst::Query*))
      __return_value
    end

    def proxy_query_caps(query)
      __return_value = LibGst.pad_proxy_query_caps(@pointer.as(LibGst::Pad*), query.to_unsafe.as(LibGst::Query*))
      __return_value
    end

    def pull_range(offset, size, buffer)
      __return_value = LibGst.pad_pull_range(@pointer.as(LibGst::Pad*), UInt64.new(offset), UInt32.new(size), buffer)
      __return_value
    end

    def push(buffer)
      __return_value = LibGst.pad_push(@pointer.as(LibGst::Pad*), buffer.to_unsafe.as(LibGst::Buffer*))
      __return_value
    end

    def push_event(event)
      __return_value = LibGst.pad_push_event(@pointer.as(LibGst::Pad*), event.to_unsafe.as(LibGst::Event*))
      __return_value
    end

    def push_list(list)
      __return_value = LibGst.pad_push_list(@pointer.as(LibGst::Pad*), list.to_unsafe.as(LibGst::BufferList*))
      __return_value
    end

    def query(query)
      __return_value = LibGst.pad_query(@pointer.as(LibGst::Pad*), query.to_unsafe.as(LibGst::Query*))
      __return_value
    end

    def query_accept_caps(caps)
      __return_value = LibGst.pad_query_accept_caps(@pointer.as(LibGst::Pad*), caps.to_unsafe.as(LibGst::Caps*))
      __return_value
    end

    def query_caps(filter)
      __return_value = LibGst.pad_query_caps(@pointer.as(LibGst::Pad*), filter ? filter.to_unsafe.as(LibGst::Caps*) : nil)
      Gst::Caps.new(__return_value)
    end

    def query_convert(src_format : Gst::Format, src_val, dest_format : Gst::Format, dest_val)
      __return_value = LibGst.pad_query_convert(@pointer.as(LibGst::Pad*), src_format, Int64.new(src_val), dest_format, dest_val)
      __return_value
    end

    def query_default(parent, query)
      __return_value = LibGst.pad_query_default(@pointer.as(LibGst::Pad*), parent ? parent.to_unsafe.as(LibGst::Object*) : nil, query.to_unsafe.as(LibGst::Query*))
      __return_value
    end

    def query_duration(format : Gst::Format, duration)
      __return_value = LibGst.pad_query_duration(@pointer.as(LibGst::Pad*), format, duration)
      __return_value
    end

    def query_position(format : Gst::Format, cur)
      __return_value = LibGst.pad_query_position(@pointer.as(LibGst::Pad*), format, cur)
      __return_value
    end

    def remove_probe(id)
      LibGst.pad_remove_probe(@pointer.as(LibGst::Pad*), UInt64.new(id))
      nil
    end

    def send_event(event)
      __return_value = LibGst.pad_send_event(@pointer.as(LibGst::Pad*), event.to_unsafe.as(LibGst::Event*))
      __return_value
    end

    def set_activate_function_full(activate, user_data, notify)
      LibGst.pad_set_activate_function_full(@pointer.as(LibGst::Pad*), activate, user_data ? user_data : nil, notify)
      nil
    end

    def set_activatemode_function_full(activatemode, user_data, notify)
      LibGst.pad_set_activatemode_function_full(@pointer.as(LibGst::Pad*), activatemode, user_data ? user_data : nil, notify)
      nil
    end

    def active=(active)
      __return_value = LibGst.pad_set_active(@pointer.as(LibGst::Pad*), active)
      __return_value
    end

    def set_chain_function_full(chain, user_data, notify)
      LibGst.pad_set_chain_function_full(@pointer.as(LibGst::Pad*), chain, user_data ? user_data : nil, notify)
      nil
    end

    def set_chain_list_function_full(chainlist, user_data, notify)
      LibGst.pad_set_chain_list_function_full(@pointer.as(LibGst::Pad*), chainlist, user_data ? user_data : nil, notify)
      nil
    end

    def element_private=(priv)
      LibGst.pad_set_element_private(@pointer.as(LibGst::Pad*), priv ? priv : nil)
      nil
    end

    def set_event_full_function_full(event, user_data, notify)
      LibGst.pad_set_event_full_function_full(@pointer.as(LibGst::Pad*), event, user_data ? user_data : nil, notify)
      nil
    end

    def set_event_function_full(event, user_data, notify)
      LibGst.pad_set_event_function_full(@pointer.as(LibGst::Pad*), event, user_data ? user_data : nil, notify)
      nil
    end

    def set_getrange_function_full(get, user_data, notify)
      LibGst.pad_set_getrange_function_full(@pointer.as(LibGst::Pad*), get, user_data ? user_data : nil, notify)
      nil
    end

    def set_iterate_internal_links_function_full(iterintlink, user_data, notify)
      LibGst.pad_set_iterate_internal_links_function_full(@pointer.as(LibGst::Pad*), iterintlink, user_data ? user_data : nil, notify)
      nil
    end

    def set_link_function_full(link, user_data, notify)
      LibGst.pad_set_link_function_full(@pointer.as(LibGst::Pad*), link, user_data ? user_data : nil, notify)
      nil
    end

    def offset=(offset)
      LibGst.pad_set_offset(@pointer.as(LibGst::Pad*), Int64.new(offset))
      nil
    end

    def set_query_function_full(query, user_data, notify)
      LibGst.pad_set_query_function_full(@pointer.as(LibGst::Pad*), query, user_data ? user_data : nil, notify)
      nil
    end

    def set_unlink_function_full(unlink, user_data, notify)
      LibGst.pad_set_unlink_function_full(@pointer.as(LibGst::Pad*), unlink, user_data ? user_data : nil, notify)
      nil
    end

    def start_task(func, user_data, notify)
      __return_value = LibGst.pad_start_task(@pointer.as(LibGst::Pad*), func, user_data ? user_data : nil, notify)
      __return_value
    end

    def sticky_events_foreach(foreach_func, user_data)
      LibGst.pad_sticky_events_foreach(@pointer.as(LibGst::Pad*), foreach_func, user_data ? user_data : nil)
      nil
    end

    def stop_task
      __return_value = LibGst.pad_stop_task(@pointer.as(LibGst::Pad*))
      __return_value
    end

    def store_sticky_event(event)
      __return_value = LibGst.pad_store_sticky_event(@pointer.as(LibGst::Pad*), event.to_unsafe.as(LibGst::Event*))
      __return_value
    end

    def unlink(sinkpad)
      __return_value = LibGst.pad_unlink(@pointer.as(LibGst::Pad*), sinkpad.to_unsafe.as(LibGst::Pad*))
      __return_value
    end

    def use_fixed_caps
      LibGst.pad_use_fixed_caps(@pointer.as(LibGst::Pad*))
      nil
    end

    alias LinkedSignal = Pad, Gst::Pad ->
    def on_linked(&__block : LinkedSignal)
      __callback = ->(_arg0 : LibGst::Pad*, _arg1 : LibGst::LibGst::Pad**) {
       __return_value = __block.call(Pad.new(_arg0), Gst::Pad.new(_arg1))
       __return_value
      }
      connect("linked", __callback)
    end

    alias UnlinkedSignal = Pad, Gst::Pad ->
    def on_unlinked(&__block : UnlinkedSignal)
      __callback = ->(_arg0 : LibGst::Pad*, _arg1 : LibGst::LibGst::Pad**) {
       __return_value = __block.call(Pad.new(_arg0), Gst::Pad.new(_arg1))
       __return_value
      }
      connect("unlinked", __callback)
    end

  end
end

