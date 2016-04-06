require "./container_accessible"

module Gtk
  class ComboBoxAccessible < ContainerAccessible
    def initialize(@gtk_combo_box_accessible)
    end

    def to_unsafe
      @gtk_combo_box_accessible.not_nil!
    end

    # Implements Action
    # Implements Component
    # Implements Selection
  end
end

