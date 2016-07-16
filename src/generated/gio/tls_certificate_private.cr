module Gio
  class TlsCertificatePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::TlsCertificatePrivate*))
    end

    @gio_tls_certificate_private : LibGio::TlsCertificatePrivate*?
    def initialize(@gio_tls_certificate_private : LibGio::TlsCertificatePrivate*)
    end

    def to_unsafe
      @gio_tls_certificate_private.not_nil!
    end

  end
end

