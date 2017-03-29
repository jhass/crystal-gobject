require "./socket_connection"

module Gio
  class UnixConnection < SocketConnection
    @gio_unix_connection : LibGio::UnixConnection*?
    def initialize(@gio_unix_connection : LibGio::UnixConnection*)
    end

    def to_unsafe
      @gio_unix_connection.not_nil!
    end

    def receive_credentials(cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.unix_connection_receive_credentials(to_unsafe.as(LibGio::UnixConnection*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      Gio::Credentials.new(__return_value)
    end

    def receive_credentials_async(cancellable, callback, user_data)
      __return_value = LibGio.unix_connection_receive_credentials_async(to_unsafe.as(LibGio::UnixConnection*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      __return_value
    end

    def receive_credentials_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.unix_connection_receive_credentials_finish(to_unsafe.as(LibGio::UnixConnection*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      Gio::Credentials.new(__return_value)
    end

    def receive_fd(cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.unix_connection_receive_fd(to_unsafe.as(LibGio::UnixConnection*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def send_credentials(cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.unix_connection_send_credentials(to_unsafe.as(LibGio::UnixConnection*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def send_credentials_async(cancellable, callback, user_data)
      __return_value = LibGio.unix_connection_send_credentials_async(to_unsafe.as(LibGio::UnixConnection*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      __return_value
    end

    def send_credentials_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.unix_connection_send_credentials_finish(to_unsafe.as(LibGio::UnixConnection*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def send_fd(fd, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.unix_connection_send_fd(to_unsafe.as(LibGio::UnixConnection*), Int32.new(fd), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

  end
end

