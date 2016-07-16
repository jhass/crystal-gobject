module Gio
  class TlsDatabasePrivate
    include GObject::WrappedType

    @gio_tls_database_private : LibGio::TlsDatabasePrivate*?
    def initialize(@gio_tls_database_private : LibGio::TlsDatabasePrivate*)
    end

    def to_unsafe
      @gio_tls_database_private.not_nil!.as(Void*)
    end

  end
end

