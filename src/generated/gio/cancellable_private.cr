module Gio
  class CancellablePrivate
    include GObject::WrappedType

    @gio_cancellable_private : LibGio::CancellablePrivate*?
    def initialize(@gio_cancellable_private : LibGio::CancellablePrivate*)
    end

    def to_unsafe
      @gio_cancellable_private.not_nil!.as(Void*)
    end

  end
end

