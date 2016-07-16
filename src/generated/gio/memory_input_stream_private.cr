module Gio
  class MemoryInputStreamPrivate
    include GObject::WrappedType

    @gio_memory_input_stream_private : LibGio::MemoryInputStreamPrivate*?
    def initialize(@gio_memory_input_stream_private : LibGio::MemoryInputStreamPrivate*)
    end

    def to_unsafe
      @gio_memory_input_stream_private.not_nil!.as(Void*)
    end

  end
end

