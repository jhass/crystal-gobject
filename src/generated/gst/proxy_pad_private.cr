module Gst
  class ProxyPadPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGst::ProxyPadPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::ProxyPadPrivate*)
    end

  end
end

