module Gio
  class MenuLinkIterPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::MenuLinkIterPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::MenuLinkIterPrivate*)
    end

  end
end

