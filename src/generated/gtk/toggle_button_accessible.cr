require "./button_accessible"

module Gtk
  class ToggleButtonAccessible < ButtonAccessible
    @gtk_toggle_button_accessible : LibGtk::ToggleButtonAccessible*?
    def initialize(@gtk_toggle_button_accessible : LibGtk::ToggleButtonAccessible*)
    end

    def to_unsafe
      @gtk_toggle_button_accessible.not_nil!.as(Void*)
    end

    # Implements Action
    # Implements Component
    # Implements Image
  end
end

