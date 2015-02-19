require "./container"

module Gtk
  class Grid < Container
    def initialize @gtk_grid
    end

    def to_unsafe
      @gtk_grid.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def baseline_row=(__value)
      LibGtk.grid_set_baseline_row((to_unsafe as LibGtk::Grid*), Int32.cast(__value))
    end

    def column_homogeneous=(__value)
      LibGtk.grid_set_column_homogeneous((to_unsafe as LibGtk::Grid*), Bool.cast(__value))
    end

    def column_spacing=(__value)
      LibGtk.grid_set_column_spacing((to_unsafe as LibGtk::Grid*), Int32.cast(__value))
    end

    def row_homogeneous=(__value)
      LibGtk.grid_set_row_homogeneous((to_unsafe as LibGtk::Grid*), Bool.cast(__value))
    end

    def row_spacing=(__value)
      LibGtk.grid_set_row_spacing((to_unsafe as LibGtk::Grid*), Int32.cast(__value))
    end

    def self.new_internal
      __return_value = LibGtk.grid_new
      Gtk::Widget.new(__return_value)
    end

    def attach(child, left, top, width, height)
      __return_value = LibGtk.grid_attach((to_unsafe as LibGtk::Grid*), (child.to_unsafe as LibGtk::Widget*), Int32.cast(left), Int32.cast(top), Int32.cast(width), Int32.cast(height))
      __return_value
    end

    def attach_next_to(child, sibling, side, width, height)
      __return_value = LibGtk.grid_attach_next_to((to_unsafe as LibGtk::Grid*), (child.to_unsafe as LibGtk::Widget*), (sibling.to_unsafe as LibGtk::Widget*), side, Int32.cast(width), Int32.cast(height))
      __return_value
    end

    def baseline_row
      __return_value = LibGtk.grid_get_baseline_row((to_unsafe as LibGtk::Grid*))
      __return_value
    end

    def child_at(left, top)
      __return_value = LibGtk.grid_get_child_at((to_unsafe as LibGtk::Grid*), Int32.cast(left), Int32.cast(top))
      Gtk::Widget.new(__return_value)
    end

    def column_homogeneous
      __return_value = LibGtk.grid_get_column_homogeneous((to_unsafe as LibGtk::Grid*))
      __return_value
    end

    def column_spacing
      __return_value = LibGtk.grid_get_column_spacing((to_unsafe as LibGtk::Grid*))
      __return_value
    end

    def row_baseline_position(row)
      __return_value = LibGtk.grid_get_row_baseline_position((to_unsafe as LibGtk::Grid*), Int32.cast(row))
      __return_value
    end

    def row_homogeneous
      __return_value = LibGtk.grid_get_row_homogeneous((to_unsafe as LibGtk::Grid*))
      __return_value
    end

    def row_spacing
      __return_value = LibGtk.grid_get_row_spacing((to_unsafe as LibGtk::Grid*))
      __return_value
    end

    def insert_column(position)
      __return_value = LibGtk.grid_insert_column((to_unsafe as LibGtk::Grid*), Int32.cast(position))
      __return_value
    end

    def insert_next_to(sibling, side)
      __return_value = LibGtk.grid_insert_next_to((to_unsafe as LibGtk::Grid*), (sibling.to_unsafe as LibGtk::Widget*), side)
      __return_value
    end

    def insert_row(position)
      __return_value = LibGtk.grid_insert_row((to_unsafe as LibGtk::Grid*), Int32.cast(position))
      __return_value
    end

    def remove_column(position)
      __return_value = LibGtk.grid_remove_column((to_unsafe as LibGtk::Grid*), Int32.cast(position))
      __return_value
    end

    def remove_row(position)
      __return_value = LibGtk.grid_remove_row((to_unsafe as LibGtk::Grid*), Int32.cast(position))
      __return_value
    end

    def baseline_row=(row)
      __return_value = LibGtk.grid_set_baseline_row((to_unsafe as LibGtk::Grid*), Int32.cast(row))
      __return_value
    end

    def column_homogeneous=(homogeneous)
      __return_value = LibGtk.grid_set_column_homogeneous((to_unsafe as LibGtk::Grid*), Bool.cast(homogeneous))
      __return_value
    end

    def column_spacing=(spacing)
      __return_value = LibGtk.grid_set_column_spacing((to_unsafe as LibGtk::Grid*), UInt32.cast(spacing))
      __return_value
    end

    def row_baseline_position=(row, pos)
      __return_value = LibGtk.grid_set_row_baseline_position((to_unsafe as LibGtk::Grid*), Int32.cast(row), pos)
      __return_value
    end

    def row_homogeneous=(homogeneous)
      __return_value = LibGtk.grid_set_row_homogeneous((to_unsafe as LibGtk::Grid*), Bool.cast(homogeneous))
      __return_value
    end

    def row_spacing=(spacing)
      __return_value = LibGtk.grid_set_row_spacing((to_unsafe as LibGtk::Grid*), UInt32.cast(spacing))
      __return_value
    end

  end
end

