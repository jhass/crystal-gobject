module Gio
  class TcpWrapperConnectionPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::TcpWrapperConnectionPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::TcpWrapperConnectionPrivate*)
    end

  end
end

