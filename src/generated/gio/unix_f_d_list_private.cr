module Gio
  class UnixFDListPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::UnixFDListPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::UnixFDListPrivate*)
    end

  end
end

