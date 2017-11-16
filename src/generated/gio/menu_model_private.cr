module Gio
  class MenuModelPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::MenuModelPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::MenuModelPrivate*)
    end

  end
end

