require "./socket_connection"

module Gio
  class UnixConnection < SocketConnection
    @pointer : Void*
    def initialize(pointer : LibGio::UnixConnection*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::UnixConnection*)
    end

    def receive_credentials(cancellable) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.unix_connection_receive_credentials(@pointer.as(LibGio::UnixConnection*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      Gio::Credentials.new(__return_value)
    end

    def receive_credentials_async(cancellable, callback, user_data)
      LibGio.unix_connection_receive_credentials_async(@pointer.as(LibGio::UnixConnection*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def receive_credentials_finish(result) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.unix_connection_receive_credentials_finish(@pointer.as(LibGio::UnixConnection*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      Gio::Credentials.new(__return_value)
    end

    def receive_fd(cancellable) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.unix_connection_receive_fd(@pointer.as(LibGio::UnixConnection*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def send_credentials(cancellable) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.unix_connection_send_credentials(@pointer.as(LibGio::UnixConnection*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def send_credentials_async(cancellable, callback, user_data)
      LibGio.unix_connection_send_credentials_async(@pointer.as(LibGio::UnixConnection*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def send_credentials_finish(result) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.unix_connection_send_credentials_finish(@pointer.as(LibGio::UnixConnection*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def send_fd(fd, cancellable) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.unix_connection_send_fd(@pointer.as(LibGio::UnixConnection*), Int32.new(fd), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

  end
end

