module Gio
  class MenuAttributeIterPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::MenuAttributeIterPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::MenuAttributeIterPrivate*)
    end

  end
end

