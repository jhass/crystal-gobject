module Gst
  class PadProbeInfo
    include GObject::WrappedType

    def initialize(@gst_pad_probe_info)
    end

    def to_unsafe
      @gst_pad_probe_info.not_nil!
    end

    def buffer
      __return_value = LibGst.pad_probe_info_get_buffer((to_unsafe as LibGst::PadProbeInfo*))
      Gst::Buffer.new(__return_value)
    end

    def buffer_list
      __return_value = LibGst.pad_probe_info_get_buffer_list((to_unsafe as LibGst::PadProbeInfo*))
      Gst::BufferList.new(__return_value)
    end

    def event
      __return_value = LibGst.pad_probe_info_get_event((to_unsafe as LibGst::PadProbeInfo*))
      Gst::Event.new(__return_value)
    end

    def query
      __return_value = LibGst.pad_probe_info_get_query((to_unsafe as LibGst::PadProbeInfo*))
      Gst::Query.new(__return_value)
    end

  end
end

