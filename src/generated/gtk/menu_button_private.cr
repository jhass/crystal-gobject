module Gtk
  class MenuButtonPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::MenuButtonPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::MenuButtonPrivate*)
    end

  end
end

