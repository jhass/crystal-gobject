module Gio
  class InetAddressPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::InetAddressPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::InetAddressPrivate*)
    end

  end
end

