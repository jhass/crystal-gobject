module Gtk
  class MenuItemAccessiblePrivate
    include GObject::WrappedType

    @gtk_menu_item_accessible_private : LibGtk::MenuItemAccessiblePrivate*?
    def initialize(@gtk_menu_item_accessible_private : LibGtk::MenuItemAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_menu_item_accessible_private.not_nil!.as(Void*)
    end

  end
end

