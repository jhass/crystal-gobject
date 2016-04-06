require "./pad"

module Gst
  class ProxyPad < Pad
    def initialize(@gst_proxy_pad)
    end

    def to_unsafe
      @gst_proxy_pad.not_nil!
    end

    def self.chain_default(pad, parent, buffer)
      __return_value = LibGst.proxy_pad_chain_default((pad.to_unsafe as LibGst::Pad*), parent && (parent.to_unsafe as LibGst::Object*), (buffer.to_unsafe as LibGst::Buffer*))
      __return_value
    end

    def self.chain_list_default(pad, parent, list)
      __return_value = LibGst.proxy_pad_chain_list_default((pad.to_unsafe as LibGst::Pad*), parent && (parent.to_unsafe as LibGst::Object*), (list.to_unsafe as LibGst::BufferList*))
      __return_value
    end

    def self.getrange_default(pad, parent, offset, size, buffer)
      __return_value = LibGst.proxy_pad_getrange_default((pad.to_unsafe as LibGst::Pad*), (parent.to_unsafe as LibGst::Object*), UInt64.new(offset), UInt32.new(size), (buffer.to_unsafe as LibGst::Buffer*))
      __return_value
    end

    def self.iterate_internal_links_default(pad, parent)
      __return_value = LibGst.proxy_pad_iterate_internal_links_default((pad.to_unsafe as LibGst::Pad*), parent && (parent.to_unsafe as LibGst::Object*))
      Gst::Iterator.new(__return_value) if __return_value
    end

    def internal
      __return_value = LibGst.proxy_pad_get_internal((to_unsafe as LibGst::ProxyPad*))
      Gst::ProxyPad.new(__return_value) if __return_value
    end

  end
end

