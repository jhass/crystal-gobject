module Gio
  module DtlsConnection
    def close(cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.dtls_connection_close(@pointer.as(LibGio::DtlsConnection*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def close_async(io_priority, cancellable, callback, user_data)
      LibGio.dtls_connection_close_async(@pointer.as(LibGio::DtlsConnection*), Int32.new(io_priority), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def close_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.dtls_connection_close_finish(@pointer.as(LibGio::DtlsConnection*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def emit_accept_certificate(peer_cert, errors : Gio::TlsCertificateFlags)
      __return_value = LibGio.dtls_connection_emit_accept_certificate(@pointer.as(LibGio::DtlsConnection*), peer_cert.to_unsafe.as(LibGio::TlsCertificate*), errors)
      __return_value
    end

    def certificate
      __return_value = LibGio.dtls_connection_get_certificate(@pointer.as(LibGio::DtlsConnection*))
      Gio::TlsCertificate.new(__return_value)
    end

    def database
      __return_value = LibGio.dtls_connection_get_database(@pointer.as(LibGio::DtlsConnection*))
      Gio::TlsDatabase.new(__return_value)
    end

    def interaction
      __return_value = LibGio.dtls_connection_get_interaction(@pointer.as(LibGio::DtlsConnection*))
      Gio::TlsInteraction.new(__return_value)
    end

    def negotiated_protocol
      __return_value = LibGio.dtls_connection_get_negotiated_protocol(@pointer.as(LibGio::DtlsConnection*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def peer_certificate
      __return_value = LibGio.dtls_connection_get_peer_certificate(@pointer.as(LibGio::DtlsConnection*))
      Gio::TlsCertificate.new(__return_value)
    end

    def peer_certificate_errors
      __return_value = LibGio.dtls_connection_get_peer_certificate_errors(@pointer.as(LibGio::DtlsConnection*))
      __return_value
    end

    def rehandshake_mode
      __return_value = LibGio.dtls_connection_get_rehandshake_mode(@pointer.as(LibGio::DtlsConnection*))
      __return_value
    end

    def require_close_notify
      __return_value = LibGio.dtls_connection_get_require_close_notify(@pointer.as(LibGio::DtlsConnection*))
      __return_value
    end

    def handshake(cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.dtls_connection_handshake(@pointer.as(LibGio::DtlsConnection*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def handshake_async(io_priority, cancellable, callback, user_data)
      LibGio.dtls_connection_handshake_async(@pointer.as(LibGio::DtlsConnection*), Int32.new(io_priority), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def handshake_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.dtls_connection_handshake_finish(@pointer.as(LibGio::DtlsConnection*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def advertised_protocols=(protocols)
      LibGio.dtls_connection_set_advertised_protocols(@pointer.as(LibGio::DtlsConnection*), protocols ? protocols : nil)
      nil
    end

    def certificate=(certificate)
      LibGio.dtls_connection_set_certificate(@pointer.as(LibGio::DtlsConnection*), certificate.to_unsafe.as(LibGio::TlsCertificate*))
      nil
    end

    def database=(database)
      LibGio.dtls_connection_set_database(@pointer.as(LibGio::DtlsConnection*), database.to_unsafe.as(LibGio::TlsDatabase*))
      nil
    end

    def interaction=(interaction)
      LibGio.dtls_connection_set_interaction(@pointer.as(LibGio::DtlsConnection*), interaction ? interaction.to_unsafe.as(LibGio::TlsInteraction*) : nil)
      nil
    end

    def rehandshake_mode=(mode : Gio::TlsRehandshakeMode)
      LibGio.dtls_connection_set_rehandshake_mode(@pointer.as(LibGio::DtlsConnection*), mode)
      nil
    end

    def require_close_notify=(require_close_notify)
      LibGio.dtls_connection_set_require_close_notify(@pointer.as(LibGio::DtlsConnection*), require_close_notify)
      nil
    end

    def shutdown(shutdown_read, shutdown_write, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.dtls_connection_shutdown(@pointer.as(LibGio::DtlsConnection*), shutdown_read, shutdown_write, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def shutdown_async(shutdown_read, shutdown_write, io_priority, cancellable, callback, user_data)
      LibGio.dtls_connection_shutdown_async(@pointer.as(LibGio::DtlsConnection*), shutdown_read, shutdown_write, Int32.new(io_priority), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def shutdown_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.dtls_connection_shutdown_finish(@pointer.as(LibGio::DtlsConnection*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    alias AcceptCertificateSignal = DtlsConnection, Gio::TlsCertificate, Gio::TlsCertificateFlags -> Bool
    def on_accept_certificate(&__block : AcceptCertificateSignal)
      __callback = ->(_arg0 : LibGio::DtlsConnection*, _arg1 : LibGio::LibGio::TlsCertificate**, _arg2 : LibGio::LibGio::TlsCertificateFlags*) {
       __return_value = __block.call(DtlsConnection.new(_arg0), Gio::TlsCertificate.new(_arg1), _arg2)
       __return_value
      }
      connect("accept-certificate", __callback)
    end

  end
end

