module Gtk
  class CheckMenuItemAccessiblePrivate
    include GObject::WrappedType

    @gtk_check_menu_item_accessible_private : LibGtk::CheckMenuItemAccessiblePrivate*?
    def initialize(@gtk_check_menu_item_accessible_private : LibGtk::CheckMenuItemAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_check_menu_item_accessible_private.not_nil!
    end

  end
end

