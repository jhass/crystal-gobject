module Gio
  class ProxyAddressEnumeratorPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::ProxyAddressEnumeratorPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::ProxyAddressEnumeratorPrivate*)
    end

  end
end

