module Gio
  class MemoryInputStreamPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::MemoryInputStreamPrivate*))
    end

    @gio_memory_input_stream_private : LibGio::MemoryInputStreamPrivate*?
    def initialize(@gio_memory_input_stream_private : LibGio::MemoryInputStreamPrivate*)
    end

    def to_unsafe
      @gio_memory_input_stream_private.not_nil!.as(Void*)
    end

  end
end

