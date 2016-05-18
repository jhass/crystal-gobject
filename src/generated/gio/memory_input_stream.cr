require "./input_stream"

module Gio
  class MemoryInputStream < InputStream
    @gio_memory_input_stream : LibGio::MemoryInputStream*?
    def initialize(@gio_memory_input_stream : LibGio::MemoryInputStream*)
    end

    def to_unsafe
      @gio_memory_input_stream.not_nil!
    end

    # Implements PollableInputStream
    # Implements Seekable
    def self.new : self
      __return_value = LibGio.memory_input_stream_new
      cast Gio::InputStream.new(__return_value)
    end

    def self.new_from_bytes(bytes) : self
      __return_value = LibGio.memory_input_stream_new_from_bytes(bytes.to_unsafe.as(LibGLib::Bytes*))
      cast Gio::InputStream.new(__return_value)
    end

    def self.new_from_data(data, len, destroy : LibGLib::DestroyNotify?) : self
      __return_value = LibGio.memory_input_stream_new_from_data(data, Int64.new(len), destroy && destroy)
      cast Gio::InputStream.new(__return_value)
    end

    def add_bytes(bytes)
      __return_value = LibGio.memory_input_stream_add_bytes(to_unsafe.as(LibGio::MemoryInputStream*), bytes.to_unsafe.as(LibGLib::Bytes*))
      __return_value
    end

    def add_data(data, len, destroy : LibGLib::DestroyNotify?)
      __return_value = LibGio.memory_input_stream_add_data(to_unsafe.as(LibGio::MemoryInputStream*), data, Int64.new(len), destroy && destroy)
      __return_value
    end

  end
end

