module Gio
  class TlsInteractionPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::TlsInteractionPrivate*))
    end

    @gio_tls_interaction_private : LibGio::TlsInteractionPrivate*?
    def initialize(@gio_tls_interaction_private : LibGio::TlsInteractionPrivate*)
    end

    def to_unsafe
      @gio_tls_interaction_private.not_nil!
    end

  end
end

