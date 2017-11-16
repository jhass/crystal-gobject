require "./output_stream"

module Gio
  class UnixOutputStream < OutputStream
    @pointer : Void*
    def initialize(pointer : LibGio::UnixOutputStream*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::UnixOutputStream*)
    end

    # Implements FileDescriptorBased
    # Implements PollableOutputStream
    def close_fd
      __return_value = LibGio.unix_output_stream_get_close_fd(to_unsafe.as(LibGio::UnixOutputStream*))
      __return_value
    end

    def fd
      __return_value = LibGio.unix_output_stream_get_fd(to_unsafe.as(LibGio::UnixOutputStream*))
      __return_value
    end

    def self.new(fd, close_fd) : self
      __return_value = LibGio.unix_output_stream_new(Int32.new(fd), close_fd)
      cast Gio::OutputStream.new(__return_value)
    end

    def close_fd
      __return_value = LibGio.unix_output_stream_get_close_fd(@pointer.as(LibGio::UnixOutputStream*))
      __return_value
    end

    def fd
      __return_value = LibGio.unix_output_stream_get_fd(@pointer.as(LibGio::UnixOutputStream*))
      __return_value
    end

    def close_fd=(close_fd)
      LibGio.unix_output_stream_set_close_fd(@pointer.as(LibGio::UnixOutputStream*), close_fd)
      nil
    end

  end
end

