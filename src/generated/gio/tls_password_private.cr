module Gio
  class TlsPasswordPrivate
    include GObject::WrappedType

    @gio_tls_password_private : LibGio::TlsPasswordPrivate*?
    def initialize(@gio_tls_password_private : LibGio::TlsPasswordPrivate*)
    end

    def to_unsafe
      @gio_tls_password_private.not_nil!
    end

  end
end

