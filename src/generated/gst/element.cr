require "./object"

module Gst
  class Element < Object
    def initialize(@gst_element)
    end

    def to_unsafe
      @gst_element.not_nil!
    end

    def self.make_from_uri(type, uri, elementname)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGst.element_make_from_uri(type, uri, elementname && elementname, pointerof(__error))
      GLib::Error.assert __error
      Gst::Element.new(__return_value)
    end

    def self.register(plugin, name, rank, type)
      __return_value = LibGst.element_register(plugin && (plugin.to_unsafe as LibGst::Plugin*), name, UInt32.new(rank), UInt64.new(type))
      __return_value
    end

    def self.state_change_return_get_name(state_ret)
      __return_value = LibGst.element_state_change_return_get_name(state_ret)
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def self.state_get_name(state)
      __return_value = LibGst.element_state_get_name(state)
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def abort_state
      __return_value = LibGst.element_abort_state((to_unsafe as LibGst::Element*))
      __return_value
    end

    def add_pad(pad)
      __return_value = LibGst.element_add_pad((to_unsafe as LibGst::Element*), (pad.to_unsafe as LibGst::Pad*))
      __return_value
    end

    def change_state(transition)
      __return_value = LibGst.element_change_state((to_unsafe as LibGst::Element*), transition)
      __return_value
    end

    def continue_state(ret)
      __return_value = LibGst.element_continue_state((to_unsafe as LibGst::Element*), ret)
      __return_value
    end

    def create_all_pads
      __return_value = LibGst.element_create_all_pads((to_unsafe as LibGst::Element*))
      __return_value
    end

    def base_time
      __return_value = LibGst.element_get_base_time((to_unsafe as LibGst::Element*))
      __return_value
    end

    def bus
      __return_value = LibGst.element_get_bus((to_unsafe as LibGst::Element*))
      Gst::Bus.new(__return_value)
    end

    def clock
      __return_value = LibGst.element_get_clock((to_unsafe as LibGst::Element*))
      Gst::Clock.new(__return_value)
    end

    def compatible_pad(pad, caps)
      __return_value = LibGst.element_get_compatible_pad((to_unsafe as LibGst::Element*), (pad.to_unsafe as LibGst::Pad*), caps && (caps.to_unsafe as LibGst::Caps*))
      Gst::Pad.new(__return_value) if __return_value
    end

    def compatible_pad_template(compattempl)
      __return_value = LibGst.element_get_compatible_pad_template((to_unsafe as LibGst::Element*), (compattempl.to_unsafe as LibGst::PadTemplate*))
      Gst::PadTemplate.new(__return_value) if __return_value
    end

    def factory
      __return_value = LibGst.element_get_factory((to_unsafe as LibGst::Element*))
      Gst::ElementFactory.new(__return_value)
    end

    def request_pad(name)
      __return_value = LibGst.element_get_request_pad((to_unsafe as LibGst::Element*), name)
      Gst::Pad.new(__return_value) if __return_value
    end

    def start_time
      __return_value = LibGst.element_get_start_time((to_unsafe as LibGst::Element*))
      __return_value
    end

    def state(state, pending, timeout)
      __return_value = LibGst.element_get_state((to_unsafe as LibGst::Element*), state, pending, UInt64.new(timeout))
      __return_value
    end

    def static_pad(name)
      __return_value = LibGst.element_get_static_pad((to_unsafe as LibGst::Element*), name)
      Gst::Pad.new(__return_value) if __return_value
    end

    def locked_state?
      __return_value = LibGst.element_is_locked_state((to_unsafe as LibGst::Element*))
      __return_value
    end

    def iterate_pads
      __return_value = LibGst.element_iterate_pads((to_unsafe as LibGst::Element*))
      Gst::Iterator.new(__return_value)
    end

    def iterate_sink_pads
      __return_value = LibGst.element_iterate_sink_pads((to_unsafe as LibGst::Element*))
      Gst::Iterator.new(__return_value)
    end

    def iterate_src_pads
      __return_value = LibGst.element_iterate_src_pads((to_unsafe as LibGst::Element*))
      Gst::Iterator.new(__return_value)
    end

    def link(dest)
      __return_value = LibGst.element_link((to_unsafe as LibGst::Element*), (dest.to_unsafe as LibGst::Element*))
      __return_value
    end

    def link_filtered(dest, filter)
      __return_value = LibGst.element_link_filtered((to_unsafe as LibGst::Element*), (dest.to_unsafe as LibGst::Element*), filter && (filter.to_unsafe as LibGst::Caps*))
      __return_value
    end

    def link_pads(srcpadname, dest, destpadname)
      __return_value = LibGst.element_link_pads((to_unsafe as LibGst::Element*), srcpadname && srcpadname, (dest.to_unsafe as LibGst::Element*), destpadname && destpadname)
      __return_value
    end

    def link_pads_filtered(srcpadname, dest, destpadname, filter)
      __return_value = LibGst.element_link_pads_filtered((to_unsafe as LibGst::Element*), srcpadname && srcpadname, (dest.to_unsafe as LibGst::Element*), destpadname && destpadname, filter && (filter.to_unsafe as LibGst::Caps*))
      __return_value
    end

    def link_pads_full(srcpadname, dest, destpadname, flags)
      __return_value = LibGst.element_link_pads_full((to_unsafe as LibGst::Element*), srcpadname && srcpadname, (dest.to_unsafe as LibGst::Element*), destpadname && destpadname, flags)
      __return_value
    end

    def lost_state
      __return_value = LibGst.element_lost_state((to_unsafe as LibGst::Element*))
      __return_value
    end

    def message_full(type, domain, code, text, debug, file, function, line)
      __return_value = LibGst.element_message_full((to_unsafe as LibGst::Element*), type, UInt32.new(domain), Int32.new(code), text && text, debug && debug, file, function, Int32.new(line))
      __return_value
    end

    def no_more_pads
      __return_value = LibGst.element_no_more_pads((to_unsafe as LibGst::Element*))
      __return_value
    end

    def post_message(message)
      __return_value = LibGst.element_post_message((to_unsafe as LibGst::Element*), (message.to_unsafe as LibGst::Message*))
      __return_value
    end

    def provide_clock
      __return_value = LibGst.element_provide_clock((to_unsafe as LibGst::Element*))
      Gst::Clock.new(__return_value) if __return_value
    end

    def query(query)
      __return_value = LibGst.element_query((to_unsafe as LibGst::Element*), (query.to_unsafe as LibGst::Query*))
      __return_value
    end

    def query_convert(src_format, src_val, dest_format, dest_val)
      __return_value = LibGst.element_query_convert((to_unsafe as LibGst::Element*), src_format, Int64.new(src_val), dest_format, Int64.new(dest_val))
      __return_value
    end

    def query_duration(format, duration)
      __return_value = LibGst.element_query_duration((to_unsafe as LibGst::Element*), format, Int64.new(duration))
      __return_value
    end

    def query_position(format, cur)
      __return_value = LibGst.element_query_position((to_unsafe as LibGst::Element*), format, Int64.new(cur))
      __return_value
    end

    def release_request_pad(pad)
      __return_value = LibGst.element_release_request_pad((to_unsafe as LibGst::Element*), (pad.to_unsafe as LibGst::Pad*))
      __return_value
    end

    def remove_pad(pad)
      __return_value = LibGst.element_remove_pad((to_unsafe as LibGst::Element*), (pad.to_unsafe as LibGst::Pad*))
      __return_value
    end

    def request_pad(templ, name, caps)
      __return_value = LibGst.element_request_pad((to_unsafe as LibGst::Element*), (templ.to_unsafe as LibGst::PadTemplate*), name && name, caps && (caps.to_unsafe as LibGst::Caps*))
      Gst::Pad.new(__return_value) if __return_value
    end

    def seek(rate, format, flags, start_type, start, stop_type, stop)
      __return_value = LibGst.element_seek((to_unsafe as LibGst::Element*), Float64.new(rate), format, flags, start_type, Int64.new(start), stop_type, Int64.new(stop))
      __return_value
    end

    def seek_simple(format, seek_flags, seek_pos)
      __return_value = LibGst.element_seek_simple((to_unsafe as LibGst::Element*), format, seek_flags, Int64.new(seek_pos))
      __return_value
    end

    def send_event(event)
      __return_value = LibGst.element_send_event((to_unsafe as LibGst::Element*), (event.to_unsafe as LibGst::Event*))
      __return_value
    end

    def base_time=(time)
      __return_value = LibGst.element_set_base_time((to_unsafe as LibGst::Element*), UInt64.new(time))
      __return_value
    end

    def bus=(bus)
      __return_value = LibGst.element_set_bus((to_unsafe as LibGst::Element*), (bus.to_unsafe as LibGst::Bus*))
      __return_value
    end

    def clock=(clock)
      __return_value = LibGst.element_set_clock((to_unsafe as LibGst::Element*), (clock.to_unsafe as LibGst::Clock*))
      __return_value
    end

    def context=(context)
      __return_value = LibGst.element_set_context((to_unsafe as LibGst::Element*), (context.to_unsafe as LibGst::Context*))
      __return_value
    end

    def locked_state=(locked_state)
      __return_value = LibGst.element_set_locked_state((to_unsafe as LibGst::Element*), locked_state)
      __return_value
    end

    def start_time=(time)
      __return_value = LibGst.element_set_start_time((to_unsafe as LibGst::Element*), UInt64.new(time))
      __return_value
    end

    def state=(state)
      __return_value = LibGst.element_set_state((to_unsafe as LibGst::Element*), state)
      __return_value
    end

    def sync_state_with_parent
      __return_value = LibGst.element_sync_state_with_parent((to_unsafe as LibGst::Element*))
      __return_value
    end

    def unlink(dest)
      __return_value = LibGst.element_unlink((to_unsafe as LibGst::Element*), (dest.to_unsafe as LibGst::Element*))
      __return_value
    end

    def unlink_pads(srcpadname, dest, destpadname)
      __return_value = LibGst.element_unlink_pads((to_unsafe as LibGst::Element*), srcpadname, (dest.to_unsafe as LibGst::Element*), destpadname)
      __return_value
    end

    alias NoMorePadsSignal = Element -> 
    def on_no_more_pads(&__block : NoMorePadsSignal)
      __callback = ->(_arg0 : LibGst::Element*) {
       __return_value = __block.call(Element.new(_arg0))
       __return_value
      }
      connect("no-more-pads", __callback)
    end

    alias PadAddedSignal = Element, Gst::Pad -> 
    def on_pad_added(&__block : PadAddedSignal)
      __callback = ->(_arg0 : LibGst::Element*, _arg1 : LibGst::LibGst::Pad*) {
       __return_value = __block.call(Element.new(_arg0), Gst::Pad.new(_arg1))
       __return_value
      }
      connect("pad-added", __callback)
    end

    alias PadRemovedSignal = Element, Gst::Pad -> 
    def on_pad_removed(&__block : PadRemovedSignal)
      __callback = ->(_arg0 : LibGst::Element*, _arg1 : LibGst::LibGst::Pad*) {
       __return_value = __block.call(Element.new(_arg0), Gst::Pad.new(_arg1))
       __return_value
      }
      connect("pad-removed", __callback)
    end

  end
end

