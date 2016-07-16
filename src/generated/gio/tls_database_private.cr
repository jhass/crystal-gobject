module Gio
  class TlsDatabasePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::TlsDatabasePrivate*))
    end

    @gio_tls_database_private : LibGio::TlsDatabasePrivate*?
    def initialize(@gio_tls_database_private : LibGio::TlsDatabasePrivate*)
    end

    def to_unsafe
      @gio_tls_database_private.not_nil!.as(Void*)
    end

  end
end

