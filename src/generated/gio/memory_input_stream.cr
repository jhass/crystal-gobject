require "./input_stream"

module Gio
  class MemoryInputStream < InputStream
    @pointer : Void*
    def initialize(pointer : LibGio::MemoryInputStream*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::MemoryInputStream*)
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

    def self.new_from_data(data, len, destroy) : self
      __return_value = LibGio.memory_input_stream_new_from_data(data, Int64.new(len), destroy ? destroy : nil)
      cast Gio::InputStream.new(__return_value)
    end

    def add_bytes(bytes)
      LibGio.memory_input_stream_add_bytes(@pointer.as(LibGio::MemoryInputStream*), bytes.to_unsafe.as(LibGLib::Bytes*))
      nil
    end

    def add_data(data, len, destroy)
      LibGio.memory_input_stream_add_data(@pointer.as(LibGio::MemoryInputStream*), data, Int64.new(len), destroy ? destroy : nil)
      nil
    end

  end
end

