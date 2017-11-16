module Gio
  class BufferedOutputStreamPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::BufferedOutputStreamPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::BufferedOutputStreamPrivate*)
    end

  end
end

