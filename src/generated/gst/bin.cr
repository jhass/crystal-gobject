require "./element"

module Gst
  class Bin < Element
    def initialize @gst_bin
    end

    def to_unsafe
      @gst_bin.not_nil!
    end

    # Implements ChildProxy


    def self.new_internal(name)
      __return_value = LibGst.bin_new(name && name)
      Gst::Element.new(__return_value)
    end

    def add(element)
      __return_value = LibGst.bin_add((to_unsafe as LibGst::Bin*), (element.to_unsafe as LibGst::Element*))
      __return_value
    end

    def find_unlinked_pad(direction)
      __return_value = LibGst.bin_find_unlinked_pad((to_unsafe as LibGst::Bin*), direction)
      Gst::Pad.new(__return_value) if __return_value
    end

    def by_interface(iface)
      __return_value = LibGst.bin_get_by_interface((to_unsafe as LibGst::Bin*), UInt64.cast(iface))
      Gst::Element.new(__return_value)
    end

    def by_name(name)
      __return_value = LibGst.bin_get_by_name((to_unsafe as LibGst::Bin*), name)
      Gst::Element.new(__return_value) if __return_value
    end

    def by_name_recurse_up(name)
      __return_value = LibGst.bin_get_by_name_recurse_up((to_unsafe as LibGst::Bin*), name)
      Gst::Element.new(__return_value) if __return_value
    end

    def iterate_all_by_interface(iface)
      __return_value = LibGst.bin_iterate_all_by_interface((to_unsafe as LibGst::Bin*), UInt64.cast(iface))
      Gst::Iterator.new(__return_value) if __return_value
    end

    def iterate_elements
      __return_value = LibGst.bin_iterate_elements((to_unsafe as LibGst::Bin*))
      Gst::Iterator.new(__return_value) if __return_value
    end

    def iterate_recurse
      __return_value = LibGst.bin_iterate_recurse((to_unsafe as LibGst::Bin*))
      Gst::Iterator.new(__return_value) if __return_value
    end

    def iterate_sinks
      __return_value = LibGst.bin_iterate_sinks((to_unsafe as LibGst::Bin*))
      Gst::Iterator.new(__return_value) if __return_value
    end

    def iterate_sorted
      __return_value = LibGst.bin_iterate_sorted((to_unsafe as LibGst::Bin*))
      Gst::Iterator.new(__return_value) if __return_value
    end

    def iterate_sources
      __return_value = LibGst.bin_iterate_sources((to_unsafe as LibGst::Bin*))
      Gst::Iterator.new(__return_value) if __return_value
    end

    def recalculate_latency
      __return_value = LibGst.bin_recalculate_latency((to_unsafe as LibGst::Bin*))
      __return_value
    end

    def remove(element)
      __return_value = LibGst.bin_remove((to_unsafe as LibGst::Bin*), (element.to_unsafe as LibGst::Element*))
      __return_value
    end

  end
end

