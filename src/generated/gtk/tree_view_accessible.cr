require "./container_accessible"

module Gtk
  class TreeViewAccessible < ContainerAccessible
    @gtk_tree_view_accessible : LibGtk::TreeViewAccessible*?
    def initialize(@gtk_tree_view_accessible : LibGtk::TreeViewAccessible*)
    end

    def to_unsafe
      @gtk_tree_view_accessible.not_nil!.as(Void*)
    end

    # Implements Component
    # Implements Selection
    # Implements Table
    # Implements CellAccessibleParent
  end
end

