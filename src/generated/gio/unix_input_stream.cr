require "./input_stream"

module Gio
  class UnixInputStream < InputStream
    @gio_unix_input_stream : LibGio::UnixInputStream*?
    def initialize(@gio_unix_input_stream : LibGio::UnixInputStream*)
    end

    def to_unsafe
      @gio_unix_input_stream.not_nil!
    end

    # Implements FileDescriptorBased
    # Implements PollableInputStream


    def self.new(fd, close_fd) : self
      __return_value = LibGio.unix_input_stream_new(Int32.new(fd), close_fd)
      cast Gio::InputStream.new(__return_value)
    end

    def close_fd
      __return_value = LibGio.unix_input_stream_get_close_fd((to_unsafe as LibGio::UnixInputStream*))
      __return_value
    end

    def fd
      __return_value = LibGio.unix_input_stream_get_fd((to_unsafe as LibGio::UnixInputStream*))
      __return_value
    end

    def close_fd=(close_fd)
      __return_value = LibGio.unix_input_stream_set_close_fd((to_unsafe as LibGio::UnixInputStream*), close_fd)
      __return_value
    end

  end
end

