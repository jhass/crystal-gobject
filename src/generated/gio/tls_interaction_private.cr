module Gio
  class TlsInteractionPrivate
    include GObject::WrappedType

    @gio_tls_interaction_private : LibGio::TlsInteractionPrivate*?
    def initialize(@gio_tls_interaction_private : LibGio::TlsInteractionPrivate*)
    end

    def to_unsafe
      @gio_tls_interaction_private.not_nil!.as(Void*)
    end

  end
end

