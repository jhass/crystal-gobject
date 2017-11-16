module Gio
  class CancellablePrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::CancellablePrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::CancellablePrivate*)
    end

  end
end

