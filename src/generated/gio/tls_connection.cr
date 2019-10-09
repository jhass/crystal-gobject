require "./i_o_stream"

module Gio
  class TlsConnection < IOStream
    @pointer : Void*
    def initialize(pointer : LibGio::TlsConnection*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::TlsConnection*)
    end

    def advertised_protocols
      gvalue = GObject::Value.new(GObject::Type::ARRAY)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "advertised_protocols", gvalue)
      gvalue
    end

    def base_io_stream
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "base_io_stream", gvalue)
      Gio::IOStream.cast(gvalue.object)
    end

    def certificate
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "certificate", gvalue)
      Gio::TlsCertificate.cast(gvalue.object)
    end

    def database
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "database", gvalue)
      Gio::TlsDatabase.cast(gvalue.object)
    end

    def interaction
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "interaction", gvalue)
      Gio::TlsInteraction.cast(gvalue.object)
    end

    def negotiated_protocol
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "negotiated_protocol", gvalue)
      gvalue.string
    end

    def peer_certificate
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "peer_certificate", gvalue)
      Gio::TlsCertificate.cast(gvalue.object)
    end

    def peer_certificate_errors
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "peer_certificate_errors", gvalue)
      gvalue.enum
    end

    def rehandshake_mode
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "rehandshake_mode", gvalue)
      gvalue.enum
    end

    def require_close_notify
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "require_close_notify", gvalue)
      gvalue.boolean
    end

    def use_system_certdb
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "use_system_certdb", gvalue)
      gvalue.boolean
    end

    def emit_accept_certificate(peer_cert, errors : Gio::TlsCertificateFlags)
      __return_value = LibGio.tls_connection_emit_accept_certificate(@pointer.as(LibGio::TlsConnection*), peer_cert.to_unsafe.as(LibGio::TlsCertificate*), errors)
      __return_value
    end

    def certificate
      __return_value = LibGio.tls_connection_get_certificate(@pointer.as(LibGio::TlsConnection*))
      Gio::TlsCertificate.new(__return_value)
    end

    def database
      __return_value = LibGio.tls_connection_get_database(@pointer.as(LibGio::TlsConnection*))
      Gio::TlsDatabase.new(__return_value)
    end

    def interaction
      __return_value = LibGio.tls_connection_get_interaction(@pointer.as(LibGio::TlsConnection*))
      Gio::TlsInteraction.new(__return_value)
    end

    def negotiated_protocol
      __return_value = LibGio.tls_connection_get_negotiated_protocol(@pointer.as(LibGio::TlsConnection*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def peer_certificate
      __return_value = LibGio.tls_connection_get_peer_certificate(@pointer.as(LibGio::TlsConnection*))
      Gio::TlsCertificate.new(__return_value)
    end

    def peer_certificate_errors
      __return_value = LibGio.tls_connection_get_peer_certificate_errors(@pointer.as(LibGio::TlsConnection*))
      __return_value
    end

    def rehandshake_mode
      __return_value = LibGio.tls_connection_get_rehandshake_mode(@pointer.as(LibGio::TlsConnection*))
      __return_value
    end

    def require_close_notify
      __return_value = LibGio.tls_connection_get_require_close_notify(@pointer.as(LibGio::TlsConnection*))
      __return_value
    end

    def use_system_certdb
      __return_value = LibGio.tls_connection_get_use_system_certdb(@pointer.as(LibGio::TlsConnection*))
      __return_value
    end

    def handshake(cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.tls_connection_handshake(@pointer.as(LibGio::TlsConnection*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def handshake_async(io_priority, cancellable, callback, user_data)
      LibGio.tls_connection_handshake_async(@pointer.as(LibGio::TlsConnection*), Int32.new(io_priority), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def handshake_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.tls_connection_handshake_finish(@pointer.as(LibGio::TlsConnection*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def advertised_protocols=(protocols)
      LibGio.tls_connection_set_advertised_protocols(@pointer.as(LibGio::TlsConnection*), protocols ? protocols : nil)
      nil
    end

    def certificate=(certificate)
      LibGio.tls_connection_set_certificate(@pointer.as(LibGio::TlsConnection*), certificate.to_unsafe.as(LibGio::TlsCertificate*))
      nil
    end

    def database=(database)
      LibGio.tls_connection_set_database(@pointer.as(LibGio::TlsConnection*), database.to_unsafe.as(LibGio::TlsDatabase*))
      nil
    end

    def interaction=(interaction)
      LibGio.tls_connection_set_interaction(@pointer.as(LibGio::TlsConnection*), interaction ? interaction.to_unsafe.as(LibGio::TlsInteraction*) : nil)
      nil
    end

    def rehandshake_mode=(mode : Gio::TlsRehandshakeMode)
      LibGio.tls_connection_set_rehandshake_mode(@pointer.as(LibGio::TlsConnection*), mode)
      nil
    end

    def require_close_notify=(require_close_notify)
      LibGio.tls_connection_set_require_close_notify(@pointer.as(LibGio::TlsConnection*), require_close_notify)
      nil
    end

    def use_system_certdb=(use_system_certdb)
      LibGio.tls_connection_set_use_system_certdb(@pointer.as(LibGio::TlsConnection*), use_system_certdb)
      nil
    end

    alias AcceptCertificateSignal = TlsConnection, Gio::TlsCertificate, Gio::TlsCertificateFlags -> Bool
    def on_accept_certificate(&__block : AcceptCertificateSignal)
      __callback = ->(_arg0 : LibGio::TlsConnection*, _arg1 : LibGio::TlsCertificate**, _arg2 : LibGio::TlsCertificateFlags*) {
       __return_value = __block.call(TlsConnection.new(_arg0), Gio::TlsCertificate.new(_arg1), _arg2)
       __return_value
      }
      connect("accept-certificate", __callback)
    end

  end
end

