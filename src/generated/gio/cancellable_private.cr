module Gio
  class CancellablePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::CancellablePrivate*))
    end

    @gio_cancellable_private : LibGio::CancellablePrivate*?
    def initialize(@gio_cancellable_private : LibGio::CancellablePrivate*)
    end

    def to_unsafe
      @gio_cancellable_private.not_nil!.as(Void*)
    end

  end
end

