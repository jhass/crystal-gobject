module Gio
  class TlsPasswordPrivate
    include GObject::WrappedType

    def initialize(@gio_tls_password_private)
    end

    def to_unsafe
      @gio_tls_password_private.not_nil!
    end

  end
end

