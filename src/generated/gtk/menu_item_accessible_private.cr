module Gtk
  class MenuItemAccessiblePrivate
    include GObject::WrappedType

    def initialize(@gtk_menu_item_accessible_private)
    end

    def to_unsafe
      @gtk_menu_item_accessible_private.not_nil!
    end

  end
end

