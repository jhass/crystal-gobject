require "./i_o_stream"

module Gio
  class SimpleIOStream < IOStream
    def initialize(@gio_simple_i_o_stream)
    end

    def to_unsafe
      @gio_simple_i_o_stream.not_nil!
    end



    def self.new_internal(input_stream, output_stream)
      __return_value = LibGio.simple_i_o_stream_new((input_stream.to_unsafe as LibGio::InputStream*), (output_stream.to_unsafe as LibGio::OutputStream*))
      Gio::IOStream.new(__return_value)
    end

  end
end

