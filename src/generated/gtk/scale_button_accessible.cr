require "./button_accessible"

module Gtk
  class ScaleButtonAccessible < ButtonAccessible
    def initialize(@gtk_scale_button_accessible)
    end

    def to_unsafe
      @gtk_scale_button_accessible.not_nil!
    end

    # Implements Action
    # Implements Component
    # Implements Image
    # Implements Value
  end
end

