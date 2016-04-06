module Gtk
  class RadioMenuItemAccessiblePrivate
    include GObject::WrappedType

    def initialize(@gtk_radio_menu_item_accessible_private)
    end

    def to_unsafe
      @gtk_radio_menu_item_accessible_private.not_nil!
    end

  end
end

