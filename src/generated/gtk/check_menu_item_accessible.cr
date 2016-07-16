require "./menu_item_accessible"

module Gtk
  class CheckMenuItemAccessible < MenuItemAccessible
    @gtk_check_menu_item_accessible : LibGtk::CheckMenuItemAccessible*?
    def initialize(@gtk_check_menu_item_accessible : LibGtk::CheckMenuItemAccessible*)
    end

    def to_unsafe
      @gtk_check_menu_item_accessible.not_nil!.as(Void*)
    end

    # Implements Action
    # Implements Component
    # Implements Selection
  end
end

