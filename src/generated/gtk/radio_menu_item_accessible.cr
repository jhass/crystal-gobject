require "./check_menu_item_accessible"

module Gtk
  class RadioMenuItemAccessible < CheckMenuItemAccessible
    @gtk_radio_menu_item_accessible : LibGtk::RadioMenuItemAccessible*?
    def initialize(@gtk_radio_menu_item_accessible : LibGtk::RadioMenuItemAccessible*)
    end

    def to_unsafe
      @gtk_radio_menu_item_accessible.not_nil!
    end

    # Implements Action
    # Implements Component
    # Implements Selection
  end
end

