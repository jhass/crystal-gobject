require "./button_accessible"

module Gtk
  class ToggleButtonAccessible < ButtonAccessible
    def initialize(@gtk_toggle_button_accessible)
    end

    def to_unsafe
      @gtk_toggle_button_accessible.not_nil!
    end

    # Implements Action
    # Implements Component
    # Implements Image
  end
end

