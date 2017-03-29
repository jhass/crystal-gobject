require "./toggle_button_accessible"

module Gtk
  class MenuButtonAccessible < ToggleButtonAccessible
    @gtk_menu_button_accessible : LibGtk::MenuButtonAccessible*?
    def initialize(@gtk_menu_button_accessible : LibGtk::MenuButtonAccessible*)
    end

    def to_unsafe
      @gtk_menu_button_accessible.not_nil!
    end

    # Implements Action
    # Implements Component
    # Implements Image
  end
end

