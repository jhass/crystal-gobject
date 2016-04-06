require "./container_accessible"

module Gtk
  class ButtonAccessible < ContainerAccessible
    def initialize(@gtk_button_accessible)
    end

    def to_unsafe
      @gtk_button_accessible.not_nil!
    end

    # Implements Action
    # Implements Component
    # Implements Image
  end
end

