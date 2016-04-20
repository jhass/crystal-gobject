require "./container_accessible"

module Gtk
  class ButtonAccessible < ContainerAccessible
    @gtk_button_accessible : LibGtk::ButtonAccessible*?
    def initialize(@gtk_button_accessible : LibGtk::ButtonAccessible*)
    end

    def to_unsafe
      @gtk_button_accessible.not_nil!
    end

    # Implements Action
    # Implements Component
    # Implements Image
  end
end

