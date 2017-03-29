module Gio
  class TlsConnectionPrivate
    include GObject::WrappedType

    @gio_tls_connection_private : LibGio::TlsConnectionPrivate*?
    def initialize(@gio_tls_connection_private : LibGio::TlsConnectionPrivate*)
    end

    def to_unsafe
      @gio_tls_connection_private.not_nil!
    end

  end
end

