module Gio
  module DatagramBased
    def condition_check(condition)
      __return_value = LibGio.datagram_based_condition_check(to_unsafe.as(LibGio::DatagramBased*), condition)
      __return_value
    end

    def condition_wait(condition, timeout, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.datagram_based_condition_wait(to_unsafe.as(LibGio::DatagramBased*), condition, Int64.new(timeout), cancellable && cancellable.to_unsafe.as(LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def create_source(condition, cancellable)
      __return_value = LibGio.datagram_based_create_source(to_unsafe.as(LibGio::DatagramBased*), condition, cancellable && cancellable.to_unsafe.as(LibGio::Cancellable*))
      GLib::Source.new(__return_value)
    end

    def receive_messages(messages, num_messages, flags, timeout, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.datagram_based_receive_messages(to_unsafe.as(LibGio::DatagramBased*), messages, UInt32.new(num_messages), Int32.new(flags), Int64.new(timeout), cancellable && cancellable.to_unsafe.as(LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def send_messages(messages, num_messages, flags, timeout, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.datagram_based_send_messages(to_unsafe.as(LibGio::DatagramBased*), messages, UInt32.new(num_messages), Int32.new(flags), Int64.new(timeout), cancellable && cancellable.to_unsafe.as(LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

  end
end

