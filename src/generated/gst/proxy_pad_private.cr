module Gst
  class ProxyPadPrivate
    include GObject::WrappedType

    @gst_proxy_pad_private : LibGst::ProxyPadPrivate*?
    def initialize(@gst_proxy_pad_private : LibGst::ProxyPadPrivate*)
    end

    def to_unsafe
      @gst_proxy_pad_private.not_nil!
    end

  end
end

