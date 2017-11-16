module Gio
  class UnixConnectionPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::UnixConnectionPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::UnixConnectionPrivate*)
    end

  end
end

