module Gio
  class ThreadedSocketServicePrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::ThreadedSocketServicePrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::ThreadedSocketServicePrivate*)
    end

  end
end

