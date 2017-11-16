module Gio
  class InetSocketAddressPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::InetSocketAddressPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::InetSocketAddressPrivate*)
    end

  end
end

