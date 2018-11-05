module Gio
  module TlsClientConnection
    def self.new(base_io_stream, server_identity)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.tls_client_connection_new(base_io_stream.to_unsafe.as(LibGio::IOStream*), server_identity ? server_identity.to_unsafe.as(LibGio::SocketConnectable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def copy_session_state(source)
      LibGio.tls_client_connection_copy_session_state(@pointer.as(LibGio::TlsClientConnection*), source.to_unsafe.as(LibGio::TlsClientConnection*))
      nil
    end

    def accepted_cas
      __return_value = LibGio.tls_client_connection_get_accepted_cas(@pointer.as(LibGio::TlsClientConnection*))
      GLib::ListIterator(Array(UInt8), Void**).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def server_identity
      __return_value = LibGio.tls_client_connection_get_server_identity(@pointer.as(LibGio::TlsClientConnection*))
      __return_value
    end

    def use_ssl3
      __return_value = LibGio.tls_client_connection_get_use_ssl3(@pointer.as(LibGio::TlsClientConnection*))
      __return_value
    end

    def validation_flags
      __return_value = LibGio.tls_client_connection_get_validation_flags(@pointer.as(LibGio::TlsClientConnection*))
      __return_value
    end

    def server_identity=(identity)
      LibGio.tls_client_connection_set_server_identity(@pointer.as(LibGio::TlsClientConnection*), identity.to_unsafe.as(LibGio::SocketConnectable*))
      nil
    end

    def use_ssl3=(use_ssl3)
      LibGio.tls_client_connection_set_use_ssl3(@pointer.as(LibGio::TlsClientConnection*), use_ssl3)
      nil
    end

    def validation_flags=(flags : Gio::TlsCertificateFlags)
      LibGio.tls_client_connection_set_validation_flags(@pointer.as(LibGio::TlsClientConnection*), flags)
      nil
    end

  end
end

