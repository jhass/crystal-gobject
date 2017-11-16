require "./pad"

module Gst
  class ProxyPad < Pad
    @pointer : Void*
    def initialize(pointer : LibGst::ProxyPad*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::ProxyPad*)
    end

    def self.chain_default(pad, parent, buffer)
      __return_value = LibGst.proxy_pad_chain_default(pad.to_unsafe.as(LibGst::Pad*), parent ? parent.to_unsafe.as(LibGst::Object*) : nil, buffer.to_unsafe.as(LibGst::Buffer*))
      __return_value
    end

    def self.chain_list_default(pad, parent, list)
      __return_value = LibGst.proxy_pad_chain_list_default(pad.to_unsafe.as(LibGst::Pad*), parent ? parent.to_unsafe.as(LibGst::Object*) : nil, list.to_unsafe.as(LibGst::BufferList*))
      __return_value
    end

    def self.getrange_default(pad, parent, offset, size, buffer)
      __return_value = LibGst.proxy_pad_getrange_default(pad.to_unsafe.as(LibGst::Pad*), parent.to_unsafe.as(LibGst::Object*), UInt64.new(offset), UInt32.new(size), buffer)
      __return_value
    end

    def self.iterate_internal_links_default(pad, parent)
      __return_value = LibGst.proxy_pad_iterate_internal_links_default(pad.to_unsafe.as(LibGst::Pad*), parent ? parent.to_unsafe.as(LibGst::Object*) : nil)
      Gst::Iterator.new(__return_value) if __return_value
    end

    def internal
      __return_value = LibGst.proxy_pad_get_internal(@pointer.as(LibGst::ProxyPad*))
      Gst::ProxyPad.new(__return_value) if __return_value
    end

  end
end

