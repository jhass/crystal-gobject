module Gio
  class MemoryOutputStreamPrivate
    include GObject::WrappedType

    def initialize(@gio_memory_output_stream_private)
    end

    def to_unsafe
      @gio_memory_output_stream_private.not_nil!
    end

  end
end

