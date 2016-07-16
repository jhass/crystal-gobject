module Gtk
  class MenuItemPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::MenuItemPrivate*))
    end

    @gtk_menu_item_private : LibGtk::MenuItemPrivate*?
    def initialize(@gtk_menu_item_private : LibGtk::MenuItemPrivate*)
    end

    def to_unsafe
      @gtk_menu_item_private.not_nil!
    end

  end
end

