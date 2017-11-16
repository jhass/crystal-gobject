module Gio
  class UnixInputStreamPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::UnixInputStreamPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::UnixInputStreamPrivate*)
    end

  end
end

