module Gio
  class UnixSocketAddressPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::UnixSocketAddressPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::UnixSocketAddressPrivate*)
    end

  end
end

