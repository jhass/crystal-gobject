module Gio
  class NetworkServicePrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::NetworkServicePrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::NetworkServicePrivate*)
    end

  end
end

