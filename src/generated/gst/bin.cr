require "./element"

module Gst
  class Bin < Element
    @pointer : Void*
    def initialize(pointer : LibGst::Bin*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::Bin*)
    end

    # Implements ChildProxy
    def async_handling
      __return_value = LibGst.bin_get_async_handling(to_unsafe.as(LibGst::Bin*))
      __return_value
    end

    def message_forward
      __return_value = LibGst.bin_get_message_forward(to_unsafe.as(LibGst::Bin*))
      __return_value
    end

    def self.new(name) : self
      __return_value = LibGst.bin_new(name ? name.to_unsafe : nil)
      cast Gst::Element.new(__return_value)
    end

    def add(element)
      __return_value = LibGst.bin_add(@pointer.as(LibGst::Bin*), element.to_unsafe.as(LibGst::Element*))
      __return_value
    end

    def find_unlinked_pad(direction : Gst::PadDirection)
      __return_value = LibGst.bin_find_unlinked_pad(@pointer.as(LibGst::Bin*), direction)
      Gst::Pad.new(__return_value) if __return_value
    end

    def by_interface(iface)
      __return_value = LibGst.bin_get_by_interface(@pointer.as(LibGst::Bin*), UInt64.new(iface))
      Gst::Element.new(__return_value)
    end

    def by_name(name)
      __return_value = LibGst.bin_get_by_name(@pointer.as(LibGst::Bin*), name.to_unsafe)
      Gst::Element.new(__return_value) if __return_value
    end

    def by_name_recurse_up(name)
      __return_value = LibGst.bin_get_by_name_recurse_up(@pointer.as(LibGst::Bin*), name.to_unsafe)
      Gst::Element.new(__return_value) if __return_value
    end

    def suppressed_flags
      __return_value = LibGst.bin_get_suppressed_flags(@pointer.as(LibGst::Bin*))
      __return_value
    end

    def iterate_all_by_interface(iface)
      __return_value = LibGst.bin_iterate_all_by_interface(@pointer.as(LibGst::Bin*), UInt64.new(iface))
      Gst::Iterator.new(__return_value) if __return_value
    end

    def iterate_elements
      __return_value = LibGst.bin_iterate_elements(@pointer.as(LibGst::Bin*))
      Gst::Iterator.new(__return_value) if __return_value
    end

    def iterate_recurse
      __return_value = LibGst.bin_iterate_recurse(@pointer.as(LibGst::Bin*))
      Gst::Iterator.new(__return_value) if __return_value
    end

    def iterate_sinks
      __return_value = LibGst.bin_iterate_sinks(@pointer.as(LibGst::Bin*))
      Gst::Iterator.new(__return_value) if __return_value
    end

    def iterate_sorted
      __return_value = LibGst.bin_iterate_sorted(@pointer.as(LibGst::Bin*))
      Gst::Iterator.new(__return_value) if __return_value
    end

    def iterate_sources
      __return_value = LibGst.bin_iterate_sources(@pointer.as(LibGst::Bin*))
      Gst::Iterator.new(__return_value) if __return_value
    end

    def recalculate_latency
      __return_value = LibGst.bin_recalculate_latency(@pointer.as(LibGst::Bin*))
      __return_value
    end

    def remove(element)
      __return_value = LibGst.bin_remove(@pointer.as(LibGst::Bin*), element.to_unsafe.as(LibGst::Element*))
      __return_value
    end

    def suppressed_flags=(flags : Gst::ElementFlags)
      LibGst.bin_set_suppressed_flags(@pointer.as(LibGst::Bin*), flags)
      nil
    end

    def sync_children_states
      __return_value = LibGst.bin_sync_children_states(@pointer.as(LibGst::Bin*))
      __return_value
    end

    alias DeepElementAddedSignal = Bin, Gst::Bin, Gst::Element ->
    def on_deep_element_added(&__block : DeepElementAddedSignal)
      __callback = ->(_arg0 : LibGst::Bin*, _arg1 : LibGst::LibGst::Bin*, _arg2 : LibGst::LibGst::Element*) {
       __return_value = __block.call(Bin.new(_arg0), Gst::Bin.new(_arg1), Gst::Element.new(_arg2))
       __return_value
      }
      connect("deep-element-added", __callback)
    end

    alias DeepElementRemovedSignal = Bin, Gst::Bin, Gst::Element ->
    def on_deep_element_removed(&__block : DeepElementRemovedSignal)
      __callback = ->(_arg0 : LibGst::Bin*, _arg1 : LibGst::LibGst::Bin*, _arg2 : LibGst::LibGst::Element*) {
       __return_value = __block.call(Bin.new(_arg0), Gst::Bin.new(_arg1), Gst::Element.new(_arg2))
       __return_value
      }
      connect("deep-element-removed", __callback)
    end

    alias DoLatencySignal = Bin -> Bool
    def on_do_latency(&__block : DoLatencySignal)
      __callback = ->(_arg0 : LibGst::Bin*) {
       __return_value = __block.call(Bin.new(_arg0))
       __return_value
      }
      connect("do-latency", __callback)
    end

    alias ElementAddedSignal = Bin, Gst::Element ->
    def on_element_added(&__block : ElementAddedSignal)
      __callback = ->(_arg0 : LibGst::Bin*, _arg1 : LibGst::LibGst::Element*) {
       __return_value = __block.call(Bin.new(_arg0), Gst::Element.new(_arg1))
       __return_value
      }
      connect("element-added", __callback)
    end

    alias ElementRemovedSignal = Bin, Gst::Element ->
    def on_element_removed(&__block : ElementRemovedSignal)
      __callback = ->(_arg0 : LibGst::Bin*, _arg1 : LibGst::LibGst::Element*) {
       __return_value = __block.call(Bin.new(_arg0), Gst::Element.new(_arg1))
       __return_value
      }
      connect("element-removed", __callback)
    end

  end
end

