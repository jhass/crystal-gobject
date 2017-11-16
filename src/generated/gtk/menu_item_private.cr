module Gtk
  class MenuItemPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::MenuItemPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::MenuItemPrivate*)
    end

  end
end

