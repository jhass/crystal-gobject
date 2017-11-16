module Gio
  class TlsDatabase < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::TlsDatabase*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::TlsDatabase*)
    end

    def create_certificate_handle(certificate)
      __return_value = LibGio.tls_database_create_certificate_handle(@pointer.as(LibGio::TlsDatabase*), certificate.to_unsafe.as(LibGio::TlsCertificate*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def lookup_certificate_for_handle(handle, interaction, flags : Gio::TlsDatabaseLookupFlags, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.tls_database_lookup_certificate_for_handle(@pointer.as(LibGio::TlsDatabase*), handle.to_unsafe, interaction ? interaction.to_unsafe.as(LibGio::TlsInteraction*) : nil, flags, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      Gio::TlsCertificate.new(__return_value) if __return_value
    end

    def lookup_certificate_for_handle_async(handle, interaction, flags : Gio::TlsDatabaseLookupFlags, cancellable, callback, user_data)
      LibGio.tls_database_lookup_certificate_for_handle_async(@pointer.as(LibGio::TlsDatabase*), handle.to_unsafe, interaction ? interaction.to_unsafe.as(LibGio::TlsInteraction*) : nil, flags, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def lookup_certificate_for_handle_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.tls_database_lookup_certificate_for_handle_finish(@pointer.as(LibGio::TlsDatabase*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      Gio::TlsCertificate.new(__return_value)
    end

    def lookup_certificate_issuer(certificate, interaction, flags : Gio::TlsDatabaseLookupFlags, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.tls_database_lookup_certificate_issuer(@pointer.as(LibGio::TlsDatabase*), certificate.to_unsafe.as(LibGio::TlsCertificate*), interaction ? interaction.to_unsafe.as(LibGio::TlsInteraction*) : nil, flags, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      Gio::TlsCertificate.new(__return_value)
    end

    def lookup_certificate_issuer_async(certificate, interaction, flags : Gio::TlsDatabaseLookupFlags, cancellable, callback, user_data)
      LibGio.tls_database_lookup_certificate_issuer_async(@pointer.as(LibGio::TlsDatabase*), certificate.to_unsafe.as(LibGio::TlsCertificate*), interaction ? interaction.to_unsafe.as(LibGio::TlsInteraction*) : nil, flags, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def lookup_certificate_issuer_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.tls_database_lookup_certificate_issuer_finish(@pointer.as(LibGio::TlsDatabase*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      Gio::TlsCertificate.new(__return_value)
    end

    def lookup_certificates_issued_by(issuer_raw_dn, interaction, flags : Gio::TlsDatabaseLookupFlags, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.tls_database_lookup_certificates_issued_by(@pointer.as(LibGio::TlsDatabase*), issuer_raw_dn, interaction ? interaction.to_unsafe.as(LibGio::TlsInteraction*) : nil, flags, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      GLib::ListIterator(Gio::TlsCertificate, LibGio::TlsCertificate*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def lookup_certificates_issued_by_async(issuer_raw_dn, interaction, flags : Gio::TlsDatabaseLookupFlags, cancellable, callback, user_data)
      LibGio.tls_database_lookup_certificates_issued_by_async(@pointer.as(LibGio::TlsDatabase*), issuer_raw_dn, interaction ? interaction.to_unsafe.as(LibGio::TlsInteraction*) : nil, flags, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def lookup_certificates_issued_by_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.tls_database_lookup_certificates_issued_by_finish(@pointer.as(LibGio::TlsDatabase*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      GLib::ListIterator(Gio::TlsCertificate, LibGio::TlsCertificate*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def verify_chain(chain, purpose, identity, interaction, flags : Gio::TlsDatabaseVerifyFlags, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.tls_database_verify_chain(@pointer.as(LibGio::TlsDatabase*), chain.to_unsafe.as(LibGio::TlsCertificate*), purpose.to_unsafe, identity ? identity.to_unsafe.as(LibGio::SocketConnectable*) : nil, interaction ? interaction.to_unsafe.as(LibGio::TlsInteraction*) : nil, flags, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def verify_chain_async(chain, purpose, identity, interaction, flags : Gio::TlsDatabaseVerifyFlags, cancellable, callback, user_data)
      LibGio.tls_database_verify_chain_async(@pointer.as(LibGio::TlsDatabase*), chain.to_unsafe.as(LibGio::TlsCertificate*), purpose.to_unsafe, identity ? identity.to_unsafe.as(LibGio::SocketConnectable*) : nil, interaction ? interaction.to_unsafe.as(LibGio::TlsInteraction*) : nil, flags, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def verify_chain_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.tls_database_verify_chain_finish(@pointer.as(LibGio::TlsDatabase*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

  end
end

