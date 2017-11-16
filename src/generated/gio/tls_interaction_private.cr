module Gio
  class TlsInteractionPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::TlsInteractionPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::TlsInteractionPrivate*)
    end

  end
end

