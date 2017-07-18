require "./i_o_stream"

module Gio
  class SimpleIOStream < IOStream
    @gio_simple_i_o_stream : LibGio::SimpleIOStream*?
    def initialize(@gio_simple_i_o_stream : LibGio::SimpleIOStream*)
    end

    def to_unsafe
      @gio_simple_i_o_stream.not_nil!
    end

    def input_stream
      __return_value = LibGio.simple_i_o_stream_get_input_stream(to_unsafe.as(LibGio::SimpleIOStream*))
      Gio::InputStream.new(__return_value)
    end

    def output_stream
      __return_value = LibGio.simple_i_o_stream_get_output_stream(to_unsafe.as(LibGio::SimpleIOStream*))
      Gio::OutputStream.new(__return_value)
    end

    def self.new(input_stream, output_stream) : self
      __return_value = LibGio.simple_i_o_stream_new(input_stream.to_unsafe.as(LibGio::InputStream*), output_stream.to_unsafe.as(LibGio::OutputStream*))
      cast Gio::IOStream.new(__return_value)
    end

  end
end

