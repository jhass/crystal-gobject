require "./container_accessible"

module Gtk
  class TreeViewAccessible < ContainerAccessible
    def initialize(@gtk_tree_view_accessible)
    end

    def to_unsafe
      @gtk_tree_view_accessible.not_nil!
    end

    # Implements Component
    # Implements Selection
    # Implements Table
    # Implements CellAccessibleParent
  end
end

