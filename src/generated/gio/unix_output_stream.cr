require "./output_stream"

module Gio
  class UnixOutputStream < OutputStream
    def initialize @gio_unix_output_stream
    end

    def to_unsafe
      @gio_unix_output_stream.not_nil!
    end

    # Implements FileDescriptorBased
    # Implements PollableOutputStream
    def close_fd=(__value)
      LibGio.unix_output_stream_set_close_fd((to_unsafe as LibGio::UnixOutputStream*), Bool.cast(__value))
    end


    def self.new_internal(fd, close_fd)
      __return_value = LibGio.unix_output_stream_new(Int32.cast(fd), Bool.cast(close_fd))
      Gio::OutputStream.new(__return_value)
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
      __return_value = LibGio.unix_output_stream_set_close_fd((to_unsafe as LibGio::UnixOutputStream*), Bool.cast(close_fd))
      __return_value
    end

  end
end

