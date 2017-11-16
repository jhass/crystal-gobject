module Gio
  class TcpConnectionPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::TcpConnectionPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::TcpConnectionPrivate*)
    end

  end
end

