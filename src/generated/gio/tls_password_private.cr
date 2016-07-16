module Gio
  class TlsPasswordPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::TlsPasswordPrivate*))
    end

    @gio_tls_password_private : LibGio::TlsPasswordPrivate*?
    def initialize(@gio_tls_password_private : LibGio::TlsPasswordPrivate*)
    end

    def to_unsafe
      @gio_tls_password_private.not_nil!
    end

  end
end

