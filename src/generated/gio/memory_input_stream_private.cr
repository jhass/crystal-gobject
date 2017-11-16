module Gio
  class MemoryInputStreamPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::MemoryInputStreamPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::MemoryInputStreamPrivate*)
    end

  end
end

