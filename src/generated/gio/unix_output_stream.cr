require "./output_stream"

module Gio
  class UnixOutputStream < OutputStream
    @gio_unix_output_stream : LibGio::UnixOutputStream*?
    def initialize(@gio_unix_output_stream : LibGio::UnixOutputStream*)
    end

    def to_unsafe
      @gio_unix_output_stream.not_nil!
    end

    # Implements FileDescriptorBased
    # Implements PollableOutputStream


    def self.new(fd, close_fd) : self
      __return_value = LibGio.unix_output_stream_new(Int32.new(fd), close_fd)
      cast Gio::OutputStream.new(__return_value)
    end

    def close_fd
      __return_value = LibGio.unix_output_stream_get_close_fd((to_unsafe as LibGio::UnixOutputStream*))
      __return_value
    end

    def fd
      __return_value = LibGio.unix_output_stream_get_fd((to_unsafe as LibGio::UnixOutputStream*))
      __return_value
    end

    def close_fd=(close_fd)
      __return_value = LibGio.unix_output_stream_set_close_fd((to_unsafe as LibGio::UnixOutputStream*), close_fd)
      __return_value
    end

  end
end

