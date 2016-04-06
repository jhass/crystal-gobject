module Gtk
  class CheckMenuItemAccessiblePrivate
    include GObject::WrappedType

    def initialize(@gtk_check_menu_item_accessible_private)
    end

    def to_unsafe
      @gtk_check_menu_item_accessible_private.not_nil!
    end

  end
end

