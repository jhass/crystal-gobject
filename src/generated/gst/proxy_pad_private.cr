module Gst
  class ProxyPadPrivate
    include GObject::WrappedType

    def initialize(@gst_proxy_pad_private)
    end

    def to_unsafe
      @gst_proxy_pad_private.not_nil!
    end

  end
end

