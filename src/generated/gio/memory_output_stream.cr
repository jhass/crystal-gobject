require "./output_stream"

module Gio
  class MemoryOutputStream < OutputStream
    @pointer : Void*
    def initialize(pointer : LibGio::MemoryOutputStream*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::MemoryOutputStream*)
    end

    # Implements PollableOutputStream
    # Implements Seekable
    def data
      __return_value = LibGio.memory_output_stream_get_data(to_unsafe.as(LibGio::MemoryOutputStream*))
      __return_value
    end

    def data_size
      __return_value = LibGio.memory_output_stream_get_data_size(to_unsafe.as(LibGio::MemoryOutputStream*))
      __return_value
    end

    def size
      __return_value = LibGio.memory_output_stream_get_size(to_unsafe.as(LibGio::MemoryOutputStream*))
      __return_value
    end

    def self.new_resizable : self
      __return_value = LibGio.memory_output_stream_new_resizable
      cast Gio::OutputStream.new(__return_value)
    end

    def data
      LibGio.memory_output_stream_get_data(@pointer.as(LibGio::MemoryOutputStream*))
      nil
    end

    def data_size
      __return_value = LibGio.memory_output_stream_get_data_size(@pointer.as(LibGio::MemoryOutputStream*))
      __return_value
    end

    def size
      __return_value = LibGio.memory_output_stream_get_size(@pointer.as(LibGio::MemoryOutputStream*))
      __return_value
    end

    def steal_as_bytes
      __return_value = LibGio.memory_output_stream_steal_as_bytes(@pointer.as(LibGio::MemoryOutputStream*))
      GLib::Bytes.new(__return_value)
    end

    def steal_data
      LibGio.memory_output_stream_steal_data(@pointer.as(LibGio::MemoryOutputStream*))
      nil
    end

  end
end

