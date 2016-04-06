module Gio
  class TlsDatabase < GObject::Object
    def initialize(@gio_tls_database)
    end

    def to_unsafe
      @gio_tls_database.not_nil!
    end

    def create_certificate_handle(certificate)
      __return_value = LibGio.tls_database_create_certificate_handle((to_unsafe as LibGio::TlsDatabase*), (certificate.to_unsafe as LibGio::TlsCertificate*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value)) if __return_value
    end

    def lookup_certificate_for_handle(handle, interaction, flags, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.tls_database_lookup_certificate_for_handle((to_unsafe as LibGio::TlsDatabase*), handle, interaction && (interaction.to_unsafe as LibGio::TlsInteraction*), flags, cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      Gio::TlsCertificate.new(__return_value)
    end

    def lookup_certificate_for_handle_async(handle, interaction, flags, cancellable, callback : LibGio::AsyncReadyCallback?, user_data)
      __return_value = LibGio.tls_database_lookup_certificate_for_handle_async((to_unsafe as LibGio::TlsDatabase*), handle, interaction && (interaction.to_unsafe as LibGio::TlsInteraction*), flags, cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def lookup_certificate_for_handle_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.tls_database_lookup_certificate_for_handle_finish((to_unsafe as LibGio::TlsDatabase*), (result.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      Gio::TlsCertificate.new(__return_value)
    end

    def lookup_certificate_issuer(certificate, interaction, flags, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.tls_database_lookup_certificate_issuer((to_unsafe as LibGio::TlsDatabase*), (certificate.to_unsafe as LibGio::TlsCertificate*), interaction && (interaction.to_unsafe as LibGio::TlsInteraction*), flags, cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      Gio::TlsCertificate.new(__return_value)
    end

    def lookup_certificate_issuer_async(certificate, interaction, flags, cancellable, callback : LibGio::AsyncReadyCallback?, user_data)
      __return_value = LibGio.tls_database_lookup_certificate_issuer_async((to_unsafe as LibGio::TlsDatabase*), (certificate.to_unsafe as LibGio::TlsCertificate*), interaction && (interaction.to_unsafe as LibGio::TlsInteraction*), flags, cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def lookup_certificate_issuer_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.tls_database_lookup_certificate_issuer_finish((to_unsafe as LibGio::TlsDatabase*), (result.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      Gio::TlsCertificate.new(__return_value)
    end

    def lookup_certificates_issued_by(issuer_raw_dn, interaction, flags, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.tls_database_lookup_certificates_issued_by((to_unsafe as LibGio::TlsDatabase*), issuer_raw_dn, interaction && (interaction.to_unsafe as LibGio::TlsInteraction*), flags, cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def lookup_certificates_issued_by_async(issuer_raw_dn, interaction, flags, cancellable, callback : LibGio::AsyncReadyCallback?, user_data)
      __return_value = LibGio.tls_database_lookup_certificates_issued_by_async((to_unsafe as LibGio::TlsDatabase*), issuer_raw_dn, interaction && (interaction.to_unsafe as LibGio::TlsInteraction*), flags, cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def lookup_certificates_issued_by_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.tls_database_lookup_certificates_issued_by_finish((to_unsafe as LibGio::TlsDatabase*), (result.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def verify_chain(chain, purpose, identity, interaction, flags, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.tls_database_verify_chain((to_unsafe as LibGio::TlsDatabase*), (chain.to_unsafe as LibGio::TlsCertificate*), purpose, identity && (identity.to_unsafe as LibGio::SocketConnectable*), interaction && (interaction.to_unsafe as LibGio::TlsInteraction*), flags, cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def verify_chain_async(chain, purpose, identity, interaction, flags, cancellable, callback : LibGio::AsyncReadyCallback?, user_data)
      __return_value = LibGio.tls_database_verify_chain_async((to_unsafe as LibGio::TlsDatabase*), (chain.to_unsafe as LibGio::TlsCertificate*), purpose, identity && (identity.to_unsafe as LibGio::SocketConnectable*), interaction && (interaction.to_unsafe as LibGio::TlsInteraction*), flags, cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def verify_chain_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.tls_database_verify_chain_finish((to_unsafe as LibGio::TlsDatabase*), (result.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

  end
end

