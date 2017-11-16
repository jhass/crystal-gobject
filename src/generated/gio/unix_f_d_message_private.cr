module Gio
  class UnixFDMessagePrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::UnixFDMessagePrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::UnixFDMessagePrivate*)
    end

  end
end

