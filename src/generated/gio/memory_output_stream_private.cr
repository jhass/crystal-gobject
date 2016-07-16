module Gio
  class MemoryOutputStreamPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::MemoryOutputStreamPrivate*))
    end

    @gio_memory_output_stream_private : LibGio::MemoryOutputStreamPrivate*?
    def initialize(@gio_memory_output_stream_private : LibGio::MemoryOutputStreamPrivate*)
    end

    def to_unsafe
      @gio_memory_output_stream_private.not_nil!.as(Void*)
    end

  end
end

