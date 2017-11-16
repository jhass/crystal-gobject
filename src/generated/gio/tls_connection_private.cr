module Gio
  class TlsConnectionPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::TlsConnectionPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::TlsConnectionPrivate*)
    end

  end
end

