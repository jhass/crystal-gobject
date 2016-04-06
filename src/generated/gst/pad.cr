require "./object"

module Gst
  class Pad < Object
    def initialize(@gst_pad)
    end

    def to_unsafe
      @gst_pad.not_nil!
    end





    def self.new_internal(name, direction)
      __return_value = LibGst.pad_new(name && name, direction)
      Gst::Pad.new(__return_value) if __return_value
    end

    def self.new_from_static_template(templ, name)
      __return_value = LibGst.pad_new_from_static_template((templ.to_unsafe as LibGst::StaticPadTemplate*), name)
      Gst::Pad.new(__return_value) if __return_value
    end

    def self.new_from_template(templ, name)
      __return_value = LibGst.pad_new_from_template((templ.to_unsafe as LibGst::PadTemplate*), name && name)
      Gst::Pad.new(__return_value) if __return_value
    end

    def self.link_get_name(ret)
      __return_value = LibGst.pad_link_get_name(ret)
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def activate_mode(mode, active)
      __return_value = LibGst.pad_activate_mode((to_unsafe as LibGst::Pad*), mode, active)
      __return_value
    end

    def add_probe(mask, callback : LibGst::PadProbeCallback, user_data, destroy_data : LibGLib::DestroyNotify)
      __return_value = LibGst.pad_add_probe((to_unsafe as LibGst::Pad*), mask, callback, user_data, destroy_data)
      __return_value
    end

    def can_link(sinkpad)
      __return_value = LibGst.pad_can_link((to_unsafe as LibGst::Pad*), (sinkpad.to_unsafe as LibGst::Pad*))
      __return_value
    end

    def chain(buffer)
      __return_value = LibGst.pad_chain((to_unsafe as LibGst::Pad*), (buffer.to_unsafe as LibGst::Buffer*))
      __return_value
    end

    def chain_list(list)
      __return_value = LibGst.pad_chain_list((to_unsafe as LibGst::Pad*), (list.to_unsafe as LibGst::BufferList*))
      __return_value
    end

    def check_reconfigure
      __return_value = LibGst.pad_check_reconfigure((to_unsafe as LibGst::Pad*))
      __return_value
    end

    def create_stream_id(parent, stream_id)
      __return_value = LibGst.pad_create_stream_id((to_unsafe as LibGst::Pad*), (parent.to_unsafe as LibGst::Element*), stream_id && stream_id)
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def event_default(parent, event)
      __return_value = LibGst.pad_event_default((to_unsafe as LibGst::Pad*), parent && (parent.to_unsafe as LibGst::Object*), (event.to_unsafe as LibGst::Event*))
      __return_value
    end

    def forward(forward : LibGst::PadForwardFunction, user_data)
      __return_value = LibGst.pad_forward((to_unsafe as LibGst::Pad*), forward, user_data)
      __return_value
    end

    def allowed_caps
      __return_value = LibGst.pad_get_allowed_caps((to_unsafe as LibGst::Pad*))
      Gst::Caps.new(__return_value) if __return_value
    end

    def current_caps
      __return_value = LibGst.pad_get_current_caps((to_unsafe as LibGst::Pad*))
      Gst::Caps.new(__return_value)
    end

    def direction
      __return_value = LibGst.pad_get_direction((to_unsafe as LibGst::Pad*))
      __return_value
    end

    def element_private
      __return_value = LibGst.pad_get_element_private((to_unsafe as LibGst::Pad*))
      __return_value
    end

    def last_flow_return
      __return_value = LibGst.pad_get_last_flow_return((to_unsafe as LibGst::Pad*))
      __return_value
    end

    def offset
      __return_value = LibGst.pad_get_offset((to_unsafe as LibGst::Pad*))
      __return_value
    end

    def pad_template
      __return_value = LibGst.pad_get_pad_template((to_unsafe as LibGst::Pad*))
      Gst::PadTemplate.new(__return_value) if __return_value
    end

    def pad_template_caps
      __return_value = LibGst.pad_get_pad_template_caps((to_unsafe as LibGst::Pad*))
      Gst::Caps.new(__return_value)
    end

    def parent_element
      __return_value = LibGst.pad_get_parent_element((to_unsafe as LibGst::Pad*))
      Gst::Element.new(__return_value) if __return_value
    end

    def peer
      __return_value = LibGst.pad_get_peer((to_unsafe as LibGst::Pad*))
      Gst::Pad.new(__return_value)
    end

    def range(offset, size, buffer)
      __return_value = LibGst.pad_get_range((to_unsafe as LibGst::Pad*), UInt64.new(offset), UInt32.new(size), (buffer.to_unsafe as LibGst::Buffer*))
      __return_value
    end

    def sticky_event(event_type, idx)
      __return_value = LibGst.pad_get_sticky_event((to_unsafe as LibGst::Pad*), event_type, UInt32.new(idx))
      Gst::Event.new(__return_value) if __return_value
    end

    def stream_id
      __return_value = LibGst.pad_get_stream_id((to_unsafe as LibGst::Pad*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value)) if __return_value
    end

    def has_current_caps
      __return_value = LibGst.pad_has_current_caps((to_unsafe as LibGst::Pad*))
      __return_value
    end

    def active?
      __return_value = LibGst.pad_is_active((to_unsafe as LibGst::Pad*))
      __return_value
    end

    def blocked?
      __return_value = LibGst.pad_is_blocked((to_unsafe as LibGst::Pad*))
      __return_value
    end

    def blocking?
      __return_value = LibGst.pad_is_blocking((to_unsafe as LibGst::Pad*))
      __return_value
    end

    def linked?
      __return_value = LibGst.pad_is_linked((to_unsafe as LibGst::Pad*))
      __return_value
    end

    def iterate_internal_links
      __return_value = LibGst.pad_iterate_internal_links((to_unsafe as LibGst::Pad*))
      Gst::Iterator.new(__return_value) if __return_value
    end

    def iterate_internal_links_default(parent)
      __return_value = LibGst.pad_iterate_internal_links_default((to_unsafe as LibGst::Pad*), parent && (parent.to_unsafe as LibGst::Object*))
      Gst::Iterator.new(__return_value) if __return_value
    end

    def link(sinkpad)
      __return_value = LibGst.pad_link((to_unsafe as LibGst::Pad*), (sinkpad.to_unsafe as LibGst::Pad*))
      __return_value
    end

    def link_full(sinkpad, flags)
      __return_value = LibGst.pad_link_full((to_unsafe as LibGst::Pad*), (sinkpad.to_unsafe as LibGst::Pad*), flags)
      __return_value
    end

    def mark_reconfigure
      __return_value = LibGst.pad_mark_reconfigure((to_unsafe as LibGst::Pad*))
      __return_value
    end

    def needs_reconfigure
      __return_value = LibGst.pad_needs_reconfigure((to_unsafe as LibGst::Pad*))
      __return_value
    end

    def pause_task
      __return_value = LibGst.pad_pause_task((to_unsafe as LibGst::Pad*))
      __return_value
    end

    def peer_query(query)
      __return_value = LibGst.pad_peer_query((to_unsafe as LibGst::Pad*), (query.to_unsafe as LibGst::Query*))
      __return_value
    end

    def peer_query_accept_caps(caps)
      __return_value = LibGst.pad_peer_query_accept_caps((to_unsafe as LibGst::Pad*), (caps.to_unsafe as LibGst::Caps*))
      __return_value
    end

    def peer_query_caps(filter)
      __return_value = LibGst.pad_peer_query_caps((to_unsafe as LibGst::Pad*), filter && (filter.to_unsafe as LibGst::Caps*))
      Gst::Caps.new(__return_value)
    end

    def peer_query_convert(src_format, src_val, dest_format, dest_val)
      __return_value = LibGst.pad_peer_query_convert((to_unsafe as LibGst::Pad*), src_format, Int64.new(src_val), dest_format, Int64.new(dest_val))
      __return_value
    end

    def peer_query_duration(format, duration)
      __return_value = LibGst.pad_peer_query_duration((to_unsafe as LibGst::Pad*), format, Int64.new(duration))
      __return_value
    end

    def peer_query_position(format, cur)
      __return_value = LibGst.pad_peer_query_position((to_unsafe as LibGst::Pad*), format, Int64.new(cur))
      __return_value
    end

    def proxy_query_accept_caps(query)
      __return_value = LibGst.pad_proxy_query_accept_caps((to_unsafe as LibGst::Pad*), (query.to_unsafe as LibGst::Query*))
      __return_value
    end

    def proxy_query_caps(query)
      __return_value = LibGst.pad_proxy_query_caps((to_unsafe as LibGst::Pad*), (query.to_unsafe as LibGst::Query*))
      __return_value
    end

    def pull_range(offset, size, buffer)
      __return_value = LibGst.pad_pull_range((to_unsafe as LibGst::Pad*), UInt64.new(offset), UInt32.new(size), (buffer.to_unsafe as LibGst::Buffer*))
      __return_value
    end

    def push(buffer)
      __return_value = LibGst.pad_push((to_unsafe as LibGst::Pad*), (buffer.to_unsafe as LibGst::Buffer*))
      __return_value
    end

    def push_event(event)
      __return_value = LibGst.pad_push_event((to_unsafe as LibGst::Pad*), (event.to_unsafe as LibGst::Event*))
      __return_value
    end

    def push_list(list)
      __return_value = LibGst.pad_push_list((to_unsafe as LibGst::Pad*), (list.to_unsafe as LibGst::BufferList*))
      __return_value
    end

    def query(query)
      __return_value = LibGst.pad_query((to_unsafe as LibGst::Pad*), (query.to_unsafe as LibGst::Query*))
      __return_value
    end

    def query_accept_caps(caps)
      __return_value = LibGst.pad_query_accept_caps((to_unsafe as LibGst::Pad*), (caps.to_unsafe as LibGst::Caps*))
      __return_value
    end

    def query_caps(filter)
      __return_value = LibGst.pad_query_caps((to_unsafe as LibGst::Pad*), filter && (filter.to_unsafe as LibGst::Caps*))
      Gst::Caps.new(__return_value)
    end

    def query_convert(src_format, src_val, dest_format, dest_val)
      __return_value = LibGst.pad_query_convert((to_unsafe as LibGst::Pad*), src_format, Int64.new(src_val), dest_format, Int64.new(dest_val))
      __return_value
    end

    def query_default(parent, query)
      __return_value = LibGst.pad_query_default((to_unsafe as LibGst::Pad*), parent && (parent.to_unsafe as LibGst::Object*), (query.to_unsafe as LibGst::Query*))
      __return_value
    end

    def query_duration(format, duration)
      __return_value = LibGst.pad_query_duration((to_unsafe as LibGst::Pad*), format, Int64.new(duration))
      __return_value
    end

    def query_position(format, cur)
      __return_value = LibGst.pad_query_position((to_unsafe as LibGst::Pad*), format, Int64.new(cur))
      __return_value
    end

    def remove_probe(id)
      __return_value = LibGst.pad_remove_probe((to_unsafe as LibGst::Pad*), UInt64.new(id))
      __return_value
    end

    def send_event(event)
      __return_value = LibGst.pad_send_event((to_unsafe as LibGst::Pad*), (event.to_unsafe as LibGst::Event*))
      __return_value
    end

    def set_activate_function_full(activate : LibGst::PadActivateFunction, user_data, notify : LibGLib::DestroyNotify)
      __return_value = LibGst.pad_set_activate_function_full((to_unsafe as LibGst::Pad*), activate, user_data, notify)
      __return_value
    end

    def set_activatemode_function_full(activatemode : LibGst::PadActivateModeFunction, user_data, notify : LibGLib::DestroyNotify)
      __return_value = LibGst.pad_set_activatemode_function_full((to_unsafe as LibGst::Pad*), activatemode, user_data, notify)
      __return_value
    end

    def active=(active)
      __return_value = LibGst.pad_set_active((to_unsafe as LibGst::Pad*), active)
      __return_value
    end

    def set_chain_function_full(chain : LibGst::PadChainFunction, user_data, notify : LibGLib::DestroyNotify)
      __return_value = LibGst.pad_set_chain_function_full((to_unsafe as LibGst::Pad*), chain, user_data, notify)
      __return_value
    end

    def set_chain_list_function_full(chainlist : LibGst::PadChainListFunction, user_data, notify : LibGLib::DestroyNotify)
      __return_value = LibGst.pad_set_chain_list_function_full((to_unsafe as LibGst::Pad*), chainlist, user_data, notify)
      __return_value
    end

    def element_private=(priv)
      __return_value = LibGst.pad_set_element_private((to_unsafe as LibGst::Pad*), priv)
      __return_value
    end

    def set_event_function_full(event : LibGst::PadEventFunction, user_data, notify : LibGLib::DestroyNotify)
      __return_value = LibGst.pad_set_event_function_full((to_unsafe as LibGst::Pad*), event, user_data, notify)
      __return_value
    end

    def set_getrange_function_full(get : LibGst::PadGetRangeFunction, user_data, notify : LibGLib::DestroyNotify)
      __return_value = LibGst.pad_set_getrange_function_full((to_unsafe as LibGst::Pad*), get, user_data, notify)
      __return_value
    end

    def set_iterate_internal_links_function_full(iterintlink : LibGst::PadIterIntLinkFunction, user_data, notify : LibGLib::DestroyNotify)
      __return_value = LibGst.pad_set_iterate_internal_links_function_full((to_unsafe as LibGst::Pad*), iterintlink, user_data, notify)
      __return_value
    end

    def set_link_function_full(link : LibGst::PadLinkFunction, user_data, notify : LibGLib::DestroyNotify)
      __return_value = LibGst.pad_set_link_function_full((to_unsafe as LibGst::Pad*), link, user_data, notify)
      __return_value
    end

    def offset=(offset)
      __return_value = LibGst.pad_set_offset((to_unsafe as LibGst::Pad*), Int64.new(offset))
      __return_value
    end

    def set_query_function_full(query : LibGst::PadQueryFunction, user_data, notify : LibGLib::DestroyNotify)
      __return_value = LibGst.pad_set_query_function_full((to_unsafe as LibGst::Pad*), query, user_data, notify)
      __return_value
    end

    def set_unlink_function_full(unlink : LibGst::PadUnlinkFunction, user_data, notify : LibGLib::DestroyNotify)
      __return_value = LibGst.pad_set_unlink_function_full((to_unsafe as LibGst::Pad*), unlink, user_data, notify)
      __return_value
    end

    def start_task(func : LibGst::TaskFunction, user_data, notify : LibGLib::DestroyNotify)
      __return_value = LibGst.pad_start_task((to_unsafe as LibGst::Pad*), func, user_data, notify)
      __return_value
    end

    def sticky_events_foreach(foreach_func : LibGst::PadStickyEventsForeachFunction, user_data)
      __return_value = LibGst.pad_sticky_events_foreach((to_unsafe as LibGst::Pad*), foreach_func, user_data)
      __return_value
    end

    def stop_task
      __return_value = LibGst.pad_stop_task((to_unsafe as LibGst::Pad*))
      __return_value
    end

    def store_sticky_event(event)
      __return_value = LibGst.pad_store_sticky_event((to_unsafe as LibGst::Pad*), (event.to_unsafe as LibGst::Event*))
      __return_value
    end

    def unlink(sinkpad)
      __return_value = LibGst.pad_unlink((to_unsafe as LibGst::Pad*), (sinkpad.to_unsafe as LibGst::Pad*))
      __return_value
    end

    def use_fixed_caps
      __return_value = LibGst.pad_use_fixed_caps((to_unsafe as LibGst::Pad*))
      __return_value
    end

    alias LinkedSignal = Pad, Gst::Pad -> 
    def on_linked(&__block : LinkedSignal)
      __callback = ->(_arg0 : LibGst::Pad*, _arg1 : LibGst::LibGst::Pad*) {
       __return_value = __block.call(Pad.new(_arg0), Gst::Pad.new(_arg1))
       __return_value
      }
      connect("linked", __callback)
    end

    alias UnlinkedSignal = Pad, Gst::Pad -> 
    def on_unlinked(&__block : UnlinkedSignal)
      __callback = ->(_arg0 : LibGst::Pad*, _arg1 : LibGst::LibGst::Pad*) {
       __return_value = __block.call(Pad.new(_arg0), Gst::Pad.new(_arg1))
       __return_value
      }
      connect("unlinked", __callback)
    end

  end
end

