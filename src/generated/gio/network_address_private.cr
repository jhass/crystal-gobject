module Gio
  class NetworkAddressPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::NetworkAddressPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::NetworkAddressPrivate*)
    end

  end
end

