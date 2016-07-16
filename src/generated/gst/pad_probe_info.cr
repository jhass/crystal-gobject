module Gst
  class PadProbeInfo
    include GObject::WrappedType

    def self.new(type : Gst::PadProbeType|Nil = nil, id : UInt64|Nil = nil, data : Void*|Nil = nil, offset : UInt64|Nil = nil, size : UInt32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(40, 0u8)
      new(ptr.as(LibGst::PadProbeInfo*)).tap do |object|
        object.type = type unless type.nil?
        object.id = id unless id.nil?
        object.data = data unless data.nil?
        object.offset = offset unless offset.nil?
        object.size = size unless size.nil?
      end
    end

    @gst_pad_probe_info : LibGst::PadProbeInfo*?
    def initialize(@gst_pad_probe_info : LibGst::PadProbeInfo*)
    end

    def to_unsafe
      @gst_pad_probe_info.not_nil!.as(Void*)
    end

    def buffer
      __return_value = LibGst.pad_probe_info_get_buffer(to_unsafe.as(LibGst::PadProbeInfo*))
      Gst::Buffer.new(__return_value)
    end

    def buffer_list
      __return_value = LibGst.pad_probe_info_get_buffer_list(to_unsafe.as(LibGst::PadProbeInfo*))
      Gst::BufferList.new(__return_value)
    end

    def event
      __return_value = LibGst.pad_probe_info_get_event(to_unsafe.as(LibGst::PadProbeInfo*))
      Gst::Event.new(__return_value)
    end

    def query
      __return_value = LibGst.pad_probe_info_get_query(to_unsafe.as(LibGst::PadProbeInfo*))
      Gst::Query.new(__return_value)
    end

    def type
      (to_unsafe.as(LibGst::PadProbeInfo*).value.type)
    end

    def type=(value : Gst::PadProbeType)
      to_unsafe.as(LibGst::PadProbeInfo*).value.type = value
    end

    def id
      (to_unsafe.as(LibGst::PadProbeInfo*).value.id)
    end

    def id=(value : UInt64)
      to_unsafe.as(LibGst::PadProbeInfo*).value.id = UInt64.new(value)
    end

    def data
      (to_unsafe.as(LibGst::PadProbeInfo*).value.data)
    end

    def data=(value : Void*)
      to_unsafe.as(LibGst::PadProbeInfo*).value.data = value
    end

    def offset
      (to_unsafe.as(LibGst::PadProbeInfo*).value.offset)
    end

    def offset=(value : UInt64)
      to_unsafe.as(LibGst::PadProbeInfo*).value.offset = UInt64.new(value)
    end

    def size
      (to_unsafe.as(LibGst::PadProbeInfo*).value.size)
    end

    def size=(value : UInt32)
      to_unsafe.as(LibGst::PadProbeInfo*).value.size = UInt32.new(value)
    end

  end
end

