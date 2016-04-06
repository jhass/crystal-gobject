module Gio
  class TlsCertificate < GObject::Object
    def initialize(@gio_tls_certificate)
    end

    def to_unsafe
      @gio_tls_certificate.not_nil!
    end






    def self.new_from_file(file)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.tls_certificate_new_from_file(file, pointerof(__error))
      GLib::Error.assert __error
      Gio::TlsCertificate.new(__return_value)
    end

    def self.new_from_files(cert_file, key_file)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.tls_certificate_new_from_files(cert_file, key_file, pointerof(__error))
      GLib::Error.assert __error
      Gio::TlsCertificate.new(__return_value)
    end

    def self.new_from_pem(data, length)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.tls_certificate_new_from_pem(data, Int64.new(length), pointerof(__error))
      GLib::Error.assert __error
      Gio::TlsCertificate.new(__return_value)
    end

    def self.list_new_from_file(file)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.tls_certificate_list_new_from_file(file, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def issuer
      __return_value = LibGio.tls_certificate_get_issuer((to_unsafe as LibGio::TlsCertificate*))
      Gio::TlsCertificate.new(__return_value)
    end

    def same?(cert_two)
      __return_value = LibGio.tls_certificate_is_same((to_unsafe as LibGio::TlsCertificate*), (cert_two.to_unsafe as LibGio::TlsCertificate*))
      __return_value
    end

    def verify(identity, trusted_ca)
      __return_value = LibGio.tls_certificate_verify((to_unsafe as LibGio::TlsCertificate*), identity && (identity.to_unsafe as LibGio::SocketConnectable*), trusted_ca && (trusted_ca.to_unsafe as LibGio::TlsCertificate*))
      __return_value
    end

  end
end

