module Gio
  module PollableInputStream
    def can_poll
      __return_value = LibGio.pollable_input_stream_can_poll(@pointer.as(LibGio::PollableInputStream*))
      __return_value
    end

    def create_source(cancellable)
      __return_value = LibGio.pollable_input_stream_create_source(@pointer.as(LibGio::PollableInputStream*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil)
      GLib::Source.new(__return_value)
    end

    def readable?
      __return_value = LibGio.pollable_input_stream_is_readable(@pointer.as(LibGio::PollableInputStream*))
      __return_value
    end

    def read_nonblocking(buffer, count, cancellable) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.pollable_input_stream_read_nonblocking(@pointer.as(LibGio::PollableInputStream*), buffer, UInt64.new(count), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

  end
end

