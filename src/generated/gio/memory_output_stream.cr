require "./output_stream"

module Gio
  class MemoryOutputStream < OutputStream
    def initialize(@gio_memory_output_stream)
    end

    def to_unsafe
      @gio_memory_output_stream.not_nil!
    end

    # Implements PollableOutputStream
    # Implements Seekable



    def self.new_resizable
      __return_value = LibGio.memory_output_stream_new_resizable
      Gio::OutputStream.new(__return_value)
    end

    def data
      __return_value = LibGio.memory_output_stream_get_data((to_unsafe as LibGio::MemoryOutputStream*))
      __return_value
    end

    def data_size
      __return_value = LibGio.memory_output_stream_get_data_size((to_unsafe as LibGio::MemoryOutputStream*))
      __return_value
    end

    def size
      __return_value = LibGio.memory_output_stream_get_size((to_unsafe as LibGio::MemoryOutputStream*))
      __return_value
    end

    def steal_as_bytes
      __return_value = LibGio.memory_output_stream_steal_as_bytes((to_unsafe as LibGio::MemoryOutputStream*))
      GLib::Bytes.new(__return_value)
    end

    def steal_data
      __return_value = LibGio.memory_output_stream_steal_data((to_unsafe as LibGio::MemoryOutputStream*))
      __return_value
    end

  end
end

