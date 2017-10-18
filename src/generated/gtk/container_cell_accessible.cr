require "./cell_accessible"

module Gtk
  class ContainerCellAccessible < CellAccessible
    @gtk_container_cell_accessible : LibGtk::ContainerCellAccessible*?
    def initialize(@gtk_container_cell_accessible : LibGtk::ContainerCellAccessible*)
    end

    def to_unsafe
      @gtk_container_cell_accessible.not_nil!
    end

    # Implements Action
    # Implements Component
    def self.new : self
      __return_value = LibGtk.container_cell_accessible_new
      cast Gtk::ContainerCellAccessible.new(__return_value)
    end

    def add_child(child)
      LibGtk.container_cell_accessible_add_child(to_unsafe.as(LibGtk::ContainerCellAccessible*), child.to_unsafe.as(LibGtk::CellAccessible*))
      nil
    end

    def children
      __return_value = LibGtk.container_cell_accessible_get_children(to_unsafe.as(LibGtk::ContainerCellAccessible*))
      GLib::ListIterator(Gtk::CellAccessible, LibGtk::CellAccessible*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def remove_child(child)
      LibGtk.container_cell_accessible_remove_child(to_unsafe.as(LibGtk::ContainerCellAccessible*), child.to_unsafe.as(LibGtk::CellAccessible*))
      nil
    end

  end
end

