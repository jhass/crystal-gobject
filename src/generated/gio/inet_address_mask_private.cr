module Gio
  class InetAddressMaskPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::InetAddressMaskPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::InetAddressMaskPrivate*)
    end

  end
end

