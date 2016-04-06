require "./i_o_stream"

module Gio
  class TlsConnection < IOStream
    def initialize(@gio_tls_connection)
    end

    def to_unsafe
      @gio_tls_connection.not_nil!
    end










    def emit_accept_certificate(peer_cert, errors)
      __return_value = LibGio.tls_connection_emit_accept_certificate((to_unsafe as LibGio::TlsConnection*), (peer_cert.to_unsafe as LibGio::TlsCertificate*), errors)
      __return_value
    end

    def certificate
      __return_value = LibGio.tls_connection_get_certificate((to_unsafe as LibGio::TlsConnection*))
      Gio::TlsCertificate.new(__return_value)
    end

    def database
      __return_value = LibGio.tls_connection_get_database((to_unsafe as LibGio::TlsConnection*))
      Gio::TlsDatabase.new(__return_value)
    end

    def interaction
      __return_value = LibGio.tls_connection_get_interaction((to_unsafe as LibGio::TlsConnection*))
      Gio::TlsInteraction.new(__return_value)
    end

    def peer_certificate
      __return_value = LibGio.tls_connection_get_peer_certificate((to_unsafe as LibGio::TlsConnection*))
      Gio::TlsCertificate.new(__return_value)
    end

    def peer_certificate_errors
      __return_value = LibGio.tls_connection_get_peer_certificate_errors((to_unsafe as LibGio::TlsConnection*))
      __return_value
    end

    def rehandshake_mode
      __return_value = LibGio.tls_connection_get_rehandshake_mode((to_unsafe as LibGio::TlsConnection*))
      __return_value
    end

    def require_close_notify
      __return_value = LibGio.tls_connection_get_require_close_notify((to_unsafe as LibGio::TlsConnection*))
      __return_value
    end

    def use_system_certdb
      __return_value = LibGio.tls_connection_get_use_system_certdb((to_unsafe as LibGio::TlsConnection*))
      __return_value
    end

    def handshake(cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.tls_connection_handshake((to_unsafe as LibGio::TlsConnection*), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def handshake_async(io_priority, cancellable, callback : LibGio::AsyncReadyCallback?, user_data)
      __return_value = LibGio.tls_connection_handshake_async((to_unsafe as LibGio::TlsConnection*), Int32.new(io_priority), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def handshake_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.tls_connection_handshake_finish((to_unsafe as LibGio::TlsConnection*), (result.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def certificate=(certificate)
      __return_value = LibGio.tls_connection_set_certificate((to_unsafe as LibGio::TlsConnection*), (certificate.to_unsafe as LibGio::TlsCertificate*))
      __return_value
    end

    def database=(database)
      __return_value = LibGio.tls_connection_set_database((to_unsafe as LibGio::TlsConnection*), (database.to_unsafe as LibGio::TlsDatabase*))
      __return_value
    end

    def interaction=(interaction)
      __return_value = LibGio.tls_connection_set_interaction((to_unsafe as LibGio::TlsConnection*), interaction && (interaction.to_unsafe as LibGio::TlsInteraction*))
      __return_value
    end

    def rehandshake_mode=(mode)
      __return_value = LibGio.tls_connection_set_rehandshake_mode((to_unsafe as LibGio::TlsConnection*), mode)
      __return_value
    end

    def require_close_notify=(require_close_notify)
      __return_value = LibGio.tls_connection_set_require_close_notify((to_unsafe as LibGio::TlsConnection*), require_close_notify)
      __return_value
    end

    def use_system_certdb=(use_system_certdb)
      __return_value = LibGio.tls_connection_set_use_system_certdb((to_unsafe as LibGio::TlsConnection*), use_system_certdb)
      __return_value
    end

    alias AcceptCertificateSignal = TlsConnection, Gio::TlsCertificate, Gio::TlsCertificateFlags -> Bool
    def on_accept_certificate(&__block : AcceptCertificateSignal)
      __callback = ->(_arg0 : LibGio::TlsConnection*, _arg1 : LibGio::LibGio::TlsCertificate*, _arg2 : LibGio::LibGio::TlsCertificateFlags*) {
       __return_value = __block.call(TlsConnection.new(_arg0), Gio::TlsCertificate.new(_arg1), _arg2)
       __return_value
      }
      connect("accept-certificate", __callback)
    end

  end
end

