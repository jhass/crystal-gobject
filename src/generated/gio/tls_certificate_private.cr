module Gio
  class TlsCertificatePrivate
    include GObject::WrappedType

    def initialize(@gio_tls_certificate_private)
    end

    def to_unsafe
      @gio_tls_certificate_private.not_nil!
    end

  end
end

