module Gio
  class TlsPasswordPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::TlsPasswordPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::TlsPasswordPrivate*)
    end

  end
end

