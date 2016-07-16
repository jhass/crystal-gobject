module Gtk
  class RadioMenuItemPrivate
    include GObject::WrappedType

    @gtk_radio_menu_item_private : LibGtk::RadioMenuItemPrivate*?
    def initialize(@gtk_radio_menu_item_private : LibGtk::RadioMenuItemPrivate*)
    end

    def to_unsafe
      @gtk_radio_menu_item_private.not_nil!.as(Void*)
    end

  end
end

