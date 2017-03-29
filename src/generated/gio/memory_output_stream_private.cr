module Gio
  class MemoryOutputStreamPrivate
    include GObject::WrappedType

    @gio_memory_output_stream_private : LibGio::MemoryOutputStreamPrivate*?
    def initialize(@gio_memory_output_stream_private : LibGio::MemoryOutputStreamPrivate*)
    end

    def to_unsafe
      @gio_memory_output_stream_private.not_nil!
    end

  end
end

