module Gio
  class TlsDatabasePrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::TlsDatabasePrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::TlsDatabasePrivate*)
    end

  end
end

