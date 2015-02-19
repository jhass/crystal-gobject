module Gio
  module TlsClientConnection
    def self.new_internal(base_io_stream, server_identity)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.tls_client_connection_new((base_io_stream.to_unsafe as LibGio::IOStream*), server_identity && (server_identity.to_unsafe as LibGio::SocketConnectable*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def accepted_cas
      __return_value = LibGio.tls_client_connection_get_accepted_cas((to_unsafe as LibGio::TlsClientConnection*))
      __return_value
    end

    def server_identity
      __return_value = LibGio.tls_client_connection_get_server_identity((to_unsafe as LibGio::TlsClientConnection*))
      __return_value
    end

    def use_ssl3
      __return_value = LibGio.tls_client_connection_get_use_ssl3((to_unsafe as LibGio::TlsClientConnection*))
      __return_value
    end

    def validation_flags
      __return_value = LibGio.tls_client_connection_get_validation_flags((to_unsafe as LibGio::TlsClientConnection*))
      __return_value
    end

    def server_identity=(identity)
      __return_value = LibGio.tls_client_connection_set_server_identity((to_unsafe as LibGio::TlsClientConnection*), (identity.to_unsafe as LibGio::SocketConnectable*))
      __return_value
    end

    def use_ssl3=(use_ssl3)
      __return_value = LibGio.tls_client_connection_set_use_ssl3((to_unsafe as LibGio::TlsClientConnection*), Bool.cast(use_ssl3))
      __return_value
    end

    def validation_flags=(flags)
      __return_value = LibGio.tls_client_connection_set_validation_flags((to_unsafe as LibGio::TlsClientConnection*), flags)
      __return_value
    end

  end
end

