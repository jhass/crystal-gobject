module Gio
  class TlsDatabasePrivate
    include GObject::WrappedType

    def initialize(@gio_tls_database_private)
    end

    def to_unsafe
      @gio_tls_database_private.not_nil!
    end

  end
end

