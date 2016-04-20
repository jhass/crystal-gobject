require "./toggle_button_accessible"

module Gtk
  class RadioButtonAccessible < ToggleButtonAccessible
    @gtk_radio_button_accessible : LibGtk::RadioButtonAccessible*?
    def initialize(@gtk_radio_button_accessible : LibGtk::RadioButtonAccessible*)
    end

    def to_unsafe
      @gtk_radio_button_accessible.not_nil!
    end

    # Implements Action
    # Implements Component
    # Implements Image
  end
end

