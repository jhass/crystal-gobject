module Gio
  class ProxyAddressPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::ProxyAddressPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::ProxyAddressPrivate*)
    end

  end
end

