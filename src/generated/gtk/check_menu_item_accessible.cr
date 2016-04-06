require "./menu_item_accessible"

module Gtk
  class CheckMenuItemAccessible < MenuItemAccessible
    def initialize(@gtk_check_menu_item_accessible)
    end

    def to_unsafe
      @gtk_check_menu_item_accessible.not_nil!
    end

    # Implements Action
    # Implements Component
    # Implements Selection
  end
end

