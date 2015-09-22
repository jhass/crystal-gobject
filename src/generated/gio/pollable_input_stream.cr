module Gio
  module PollableInputStream
    def can_poll
      __return_value = LibGio.pollable_input_stream_can_poll((to_unsafe as LibGio::PollableInputStream*))
      __return_value
    end

    def create_source(cancellable)
      __return_value = LibGio.pollable_input_stream_create_source((to_unsafe as LibGio::PollableInputStream*), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*))
      GLib::Source.new(__return_value)
    end

    def readable?
      __return_value = LibGio.pollable_input_stream_is_readable((to_unsafe as LibGio::PollableInputStream*))
      __return_value
    end

    def read_nonblocking(buffer, count, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.pollable_input_stream_read_nonblocking((to_unsafe as LibGio::PollableInputStream*), buffer, UInt64.new(count), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

  end
end

