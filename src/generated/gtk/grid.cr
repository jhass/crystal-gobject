require "./container"

module Gtk
  class Grid < Container
    @gtk_grid : LibGtk::Grid*?
    def initialize(@gtk_grid : LibGtk::Grid*)
    end

    def to_unsafe
      @gtk_grid.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def baseline_row
      __return_value = LibGtk.grid_get_baseline_row(to_unsafe.as(LibGtk::Grid*))
      __return_value
    end

    def column_homogeneous
      __return_value = LibGtk.grid_get_column_homogeneous(to_unsafe.as(LibGtk::Grid*))
      __return_value
    end

    def column_spacing
      __return_value = LibGtk.grid_get_column_spacing(to_unsafe.as(LibGtk::Grid*))
      __return_value
    end

    def row_homogeneous
      __return_value = LibGtk.grid_get_row_homogeneous(to_unsafe.as(LibGtk::Grid*))
      __return_value
    end

    def row_spacing
      __return_value = LibGtk.grid_get_row_spacing(to_unsafe.as(LibGtk::Grid*))
      __return_value
    end

    def self.new : self
      __return_value = LibGtk.grid_new
      cast Gtk::Widget.new(__return_value)
    end

    def attach(child, left, top, width, height)
      LibGtk.grid_attach(to_unsafe.as(LibGtk::Grid*), child.to_unsafe.as(LibGtk::Widget*), Int32.new(left), Int32.new(top), Int32.new(width), Int32.new(height))
      nil
    end

    def attach_next_to(child, sibling, side : Gtk::PositionType, width, height)
      LibGtk.grid_attach_next_to(to_unsafe.as(LibGtk::Grid*), child.to_unsafe.as(LibGtk::Widget*), sibling ? sibling.to_unsafe.as(LibGtk::Widget*) : nil, side, Int32.new(width), Int32.new(height))
      nil
    end

    def baseline_row
      __return_value = LibGtk.grid_get_baseline_row(to_unsafe.as(LibGtk::Grid*))
      __return_value
    end

    def child_at(left, top)
      __return_value = LibGtk.grid_get_child_at(to_unsafe.as(LibGtk::Grid*), Int32.new(left), Int32.new(top))
      Gtk::Widget.new(__return_value) if __return_value
    end

    def column_homogeneous
      __return_value = LibGtk.grid_get_column_homogeneous(to_unsafe.as(LibGtk::Grid*))
      __return_value
    end

    def column_spacing
      __return_value = LibGtk.grid_get_column_spacing(to_unsafe.as(LibGtk::Grid*))
      __return_value
    end

    def row_baseline_position(row)
      __return_value = LibGtk.grid_get_row_baseline_position(to_unsafe.as(LibGtk::Grid*), Int32.new(row))
      __return_value
    end

    def row_homogeneous
      __return_value = LibGtk.grid_get_row_homogeneous(to_unsafe.as(LibGtk::Grid*))
      __return_value
    end

    def row_spacing
      __return_value = LibGtk.grid_get_row_spacing(to_unsafe.as(LibGtk::Grid*))
      __return_value
    end

    def insert_column(position)
      LibGtk.grid_insert_column(to_unsafe.as(LibGtk::Grid*), Int32.new(position))
      nil
    end

    def insert_next_to(sibling, side : Gtk::PositionType)
      LibGtk.grid_insert_next_to(to_unsafe.as(LibGtk::Grid*), sibling.to_unsafe.as(LibGtk::Widget*), side)
      nil
    end

    def insert_row(position)
      LibGtk.grid_insert_row(to_unsafe.as(LibGtk::Grid*), Int32.new(position))
      nil
    end

    def remove_column(position)
      LibGtk.grid_remove_column(to_unsafe.as(LibGtk::Grid*), Int32.new(position))
      nil
    end

    def remove_row(position)
      LibGtk.grid_remove_row(to_unsafe.as(LibGtk::Grid*), Int32.new(position))
      nil
    end

    def baseline_row=(row)
      LibGtk.grid_set_baseline_row(to_unsafe.as(LibGtk::Grid*), Int32.new(row))
      nil
    end

    def column_homogeneous=(homogeneous)
      LibGtk.grid_set_column_homogeneous(to_unsafe.as(LibGtk::Grid*), homogeneous)
      nil
    end

    def column_spacing=(spacing)
      LibGtk.grid_set_column_spacing(to_unsafe.as(LibGtk::Grid*), UInt32.new(spacing))
      nil
    end

    def set_row_baseline_position(row, pos : Gtk::BaselinePosition)
      LibGtk.grid_set_row_baseline_position(to_unsafe.as(LibGtk::Grid*), Int32.new(row), pos)
      nil
    end

    def row_homogeneous=(homogeneous)
      LibGtk.grid_set_row_homogeneous(to_unsafe.as(LibGtk::Grid*), homogeneous)
      nil
    end

    def row_spacing=(spacing)
      LibGtk.grid_set_row_spacing(to_unsafe.as(LibGtk::Grid*), UInt32.new(spacing))
      nil
    end

  end
end

