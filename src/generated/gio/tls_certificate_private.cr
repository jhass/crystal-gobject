module Gio
  class TlsCertificatePrivate
    include GObject::WrappedType

    @gio_tls_certificate_private : LibGio::TlsCertificatePrivate*?
    def initialize(@gio_tls_certificate_private : LibGio::TlsCertificatePrivate*)
    end

    def to_unsafe
      @gio_tls_certificate_private.not_nil!.as(Void*)
    end

  end
end

