module Gio
  module DatagramBased
    def condition_check(condition : GLib::IOCondition)
      __return_value = LibGio.datagram_based_condition_check(@pointer.as(LibGio::DatagramBased*), condition)
      __return_value
    end

    def condition_wait(condition : GLib::IOCondition, timeout, cancellable) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.datagram_based_condition_wait(@pointer.as(LibGio::DatagramBased*), condition, Int64.new(timeout), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def create_source(condition : GLib::IOCondition, cancellable)
      __return_value = LibGio.datagram_based_create_source(@pointer.as(LibGio::DatagramBased*), condition, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil)
      GLib::Source.new(__return_value)
    end

    def receive_messages(messages, num_messages, flags, timeout, cancellable) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.datagram_based_receive_messages(@pointer.as(LibGio::DatagramBased*), messages, UInt32.new(num_messages), Int32.new(flags), Int64.new(timeout), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def send_messages(messages, num_messages, flags, timeout, cancellable) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.datagram_based_send_messages(@pointer.as(LibGio::DatagramBased*), messages, UInt32.new(num_messages), Int32.new(flags), Int64.new(timeout), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

  end
end

