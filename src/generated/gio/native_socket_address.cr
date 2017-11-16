module Gio
  class NativeSocketAddress
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::NativeSocketAddress*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::NativeSocketAddress*)
    end

  end
end

