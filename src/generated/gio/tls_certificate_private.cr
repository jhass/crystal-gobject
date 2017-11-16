module Gio
  class TlsCertificatePrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::TlsCertificatePrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::TlsCertificatePrivate*)
    end

  end
end

