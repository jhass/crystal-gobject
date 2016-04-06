module Gtk
  class MenuItemPrivate
    include GObject::WrappedType

    def initialize(@gtk_menu_item_private)
    end

    def to_unsafe
      @gtk_menu_item_private.not_nil!
    end

  end
end

