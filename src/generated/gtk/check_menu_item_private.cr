module Gtk
  class CheckMenuItemPrivate
    include GObject::WrappedType

    @gtk_check_menu_item_private : LibGtk::CheckMenuItemPrivate*?
    def initialize(@gtk_check_menu_item_private : LibGtk::CheckMenuItemPrivate*)
    end

    def to_unsafe
      @gtk_check_menu_item_private.not_nil!.as(Void*)
    end

  end
end

