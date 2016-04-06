module Gio
  class CancellablePrivate
    include GObject::WrappedType

    def initialize(@gio_cancellable_private)
    end

    def to_unsafe
      @gio_cancellable_private.not_nil!
    end

  end
end

