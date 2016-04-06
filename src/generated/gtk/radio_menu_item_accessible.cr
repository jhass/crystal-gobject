require "./check_menu_item_accessible"

module Gtk
  class RadioMenuItemAccessible < CheckMenuItemAccessible
    def initialize(@gtk_radio_menu_item_accessible)
    end

    def to_unsafe
      @gtk_radio_menu_item_accessible.not_nil!
    end

    # Implements Action
    # Implements Component
    # Implements Selection
  end
end

