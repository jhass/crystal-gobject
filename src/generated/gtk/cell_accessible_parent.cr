module Gtk
  module CellAccessibleParent
    def activate(cell)
      LibGtk.cell_accessible_parent_activate(to_unsafe.as(LibGtk::CellAccessibleParent*), cell.to_unsafe.as(LibGtk::CellAccessible*))
      nil
    end

    def edit(cell)
      LibGtk.cell_accessible_parent_edit(to_unsafe.as(LibGtk::CellAccessibleParent*), cell.to_unsafe.as(LibGtk::CellAccessible*))
      nil
    end

    def expand_collapse(cell)
      LibGtk.cell_accessible_parent_expand_collapse(to_unsafe.as(LibGtk::CellAccessibleParent*), cell.to_unsafe.as(LibGtk::CellAccessible*))
      nil
    end

    def cell_area(cell, cell_rect)
      LibGtk.cell_accessible_parent_get_cell_area(to_unsafe.as(LibGtk::CellAccessibleParent*), cell.to_unsafe.as(LibGtk::CellAccessible*), cell_rect.to_unsafe.as(LibGdk::Rectangle*))
      nil
    end

    def cell_extents(cell, x, y, width, height, coord_type : Atk::CoordType)
      LibGtk.cell_accessible_parent_get_cell_extents(to_unsafe.as(LibGtk::CellAccessibleParent*), cell.to_unsafe.as(LibGtk::CellAccessible*), x, y, width, height, coord_type)
      nil
    end

    def child_index(cell)
      __return_value = LibGtk.cell_accessible_parent_get_child_index(to_unsafe.as(LibGtk::CellAccessibleParent*), cell.to_unsafe.as(LibGtk::CellAccessible*))
      __return_value
    end

    def renderer_state(cell)
      __return_value = LibGtk.cell_accessible_parent_get_renderer_state(to_unsafe.as(LibGtk::CellAccessibleParent*), cell.to_unsafe.as(LibGtk::CellAccessible*))
      __return_value
    end

    def grab_focus(cell)
      __return_value = LibGtk.cell_accessible_parent_grab_focus(to_unsafe.as(LibGtk::CellAccessibleParent*), cell.to_unsafe.as(LibGtk::CellAccessible*))
      __return_value
    end

    def update_relationset(cell, relationset)
      LibGtk.cell_accessible_parent_update_relationset(to_unsafe.as(LibGtk::CellAccessibleParent*), cell.to_unsafe.as(LibGtk::CellAccessible*), relationset.to_unsafe.as(LibAtk::RelationSet*))
      nil
    end

  end
end

