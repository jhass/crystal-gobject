module Gio
  module DtlsClientConnection
    def self.new(base_socket, server_identity)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.dtls_client_connection_new(base_socket.to_unsafe.as(LibGio::DatagramBased*), server_identity ? server_identity.to_unsafe.as(LibGio::SocketConnectable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def accepted_cas
      __return_value = LibGio.dtls_client_connection_get_accepted_cas(@pointer.as(LibGio::DtlsClientConnection*))
      GLib::ListIterator(Array(UInt8), Void**).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def server_identity
      __return_value = LibGio.dtls_client_connection_get_server_identity(@pointer.as(LibGio::DtlsClientConnection*))
      __return_value
    end

    def validation_flags
      __return_value = LibGio.dtls_client_connection_get_validation_flags(@pointer.as(LibGio::DtlsClientConnection*))
      __return_value
    end

    def server_identity=(identity)
      LibGio.dtls_client_connection_set_server_identity(@pointer.as(LibGio::DtlsClientConnection*), identity.to_unsafe.as(LibGio::SocketConnectable*))
      nil
    end

    def validation_flags=(flags : Gio::TlsCertificateFlags)
      LibGio.dtls_client_connection_set_validation_flags(@pointer.as(LibGio::DtlsClientConnection*), flags)
      nil
    end

  end
end

