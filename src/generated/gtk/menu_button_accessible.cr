require "./toggle_button_accessible"

module Gtk
  class MenuButtonAccessible < ToggleButtonAccessible
    def initialize(@gtk_menu_button_accessible)
    end

    def to_unsafe
      @gtk_menu_button_accessible.not_nil!
    end

    # Implements Action
    # Implements Component
    # Implements Image
  end
end

