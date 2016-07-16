module Gio
  class TlsConnectionPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::TlsConnectionPrivate*))
    end

    @gio_tls_connection_private : LibGio::TlsConnectionPrivate*?
    def initialize(@gio_tls_connection_private : LibGio::TlsConnectionPrivate*)
    end

    def to_unsafe
      @gio_tls_connection_private.not_nil!.as(Void*)
    end

  end
end

