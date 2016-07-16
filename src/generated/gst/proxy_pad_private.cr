module Gst
  class ProxyPadPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGst::ProxyPadPrivate*))
    end

    @gst_proxy_pad_private : LibGst::ProxyPadPrivate*?
    def initialize(@gst_proxy_pad_private : LibGst::ProxyPadPrivate*)
    end

    def to_unsafe
      @gst_proxy_pad_private.not_nil!.as(Void*)
    end

  end
end

