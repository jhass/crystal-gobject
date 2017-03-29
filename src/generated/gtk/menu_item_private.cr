module Gtk
  class MenuItemPrivate
    include GObject::WrappedType

    @gtk_menu_item_private : LibGtk::MenuItemPrivate*?
    def initialize(@gtk_menu_item_private : LibGtk::MenuItemPrivate*)
    end

    def to_unsafe
      @gtk_menu_item_private.not_nil!
    end

  end
end

