require "./cell_accessible"

module Gtk
  class ContainerCellAccessible < CellAccessible
    def initialize(@gtk_container_cell_accessible)
    end

    def to_unsafe
      @gtk_container_cell_accessible.not_nil!
    end

    # Implements Action
    # Implements Component
    def self.new_internal
      __return_value = LibGtk.container_cell_accessible_new
      Gtk::ContainerCellAccessible.new(__return_value)
    end

    def add_child(child)
      __return_value = LibGtk.container_cell_accessible_add_child((to_unsafe as LibGtk::ContainerCellAccessible*), (child.to_unsafe as LibGtk::CellAccessible*))
      __return_value
    end

    def children
      __return_value = LibGtk.container_cell_accessible_get_children((to_unsafe as LibGtk::ContainerCellAccessible*))
      __return_value
    end

    def remove_child(child)
      __return_value = LibGtk.container_cell_accessible_remove_child((to_unsafe as LibGtk::ContainerCellAccessible*), (child.to_unsafe as LibGtk::CellAccessible*))
      __return_value
    end

  end
end

