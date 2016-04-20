require "./container_accessible"

module Gtk
  class ComboBoxAccessible < ContainerAccessible
    @gtk_combo_box_accessible : LibGtk::ComboBoxAccessible*?
    def initialize(@gtk_combo_box_accessible : LibGtk::ComboBoxAccessible*)
    end

    def to_unsafe
      @gtk_combo_box_accessible.not_nil!
    end

    # Implements Action
    # Implements Component
    # Implements Selection
  end
end

