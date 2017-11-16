module Gio
  module PollableOutputStream
    def can_poll
      __return_value = LibGio.pollable_output_stream_can_poll(@pointer.as(LibGio::PollableOutputStream*))
      __return_value
    end

    def create_source(cancellable)
      __return_value = LibGio.pollable_output_stream_create_source(@pointer.as(LibGio::PollableOutputStream*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil)
      GLib::Source.new(__return_value)
    end

    def writable?
      __return_value = LibGio.pollable_output_stream_is_writable(@pointer.as(LibGio::PollableOutputStream*))
      __return_value
    end

    def write_nonblocking(buffer, count, cancellable) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.pollable_output_stream_write_nonblocking(@pointer.as(LibGio::PollableOutputStream*), buffer, UInt64.new(count), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

  end
end

