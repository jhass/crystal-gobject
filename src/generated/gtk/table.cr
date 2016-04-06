require "./container"

module Gtk
  class Table < Container
    def initialize(@gtk_table)
    end

    def to_unsafe
      @gtk_table.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable





    def self.new_internal(rows, columns, homogeneous)
      __return_value = LibGtk.table_new(UInt32.new(rows), UInt32.new(columns), homogeneous)
      Gtk::Widget.new(__return_value)
    end

    def attach(child, left_attach, right_attach, top_attach, bottom_attach, xoptions, yoptions, xpadding, ypadding)
      __return_value = LibGtk.table_attach((to_unsafe as LibGtk::Table*), (child.to_unsafe as LibGtk::Widget*), UInt32.new(left_attach), UInt32.new(right_attach), UInt32.new(top_attach), UInt32.new(bottom_attach), xoptions, yoptions, UInt32.new(xpadding), UInt32.new(ypadding))
      __return_value
    end

    def attach_defaults(widget, left_attach, right_attach, top_attach, bottom_attach)
      __return_value = LibGtk.table_attach_defaults((to_unsafe as LibGtk::Table*), (widget.to_unsafe as LibGtk::Widget*), UInt32.new(left_attach), UInt32.new(right_attach), UInt32.new(top_attach), UInt32.new(bottom_attach))
      __return_value
    end

    def col_spacing(column)
      __return_value = LibGtk.table_get_col_spacing((to_unsafe as LibGtk::Table*), UInt32.new(column))
      __return_value
    end

    def default_col_spacing
      __return_value = LibGtk.table_get_default_col_spacing((to_unsafe as LibGtk::Table*))
      __return_value
    end

    def default_row_spacing
      __return_value = LibGtk.table_get_default_row_spacing((to_unsafe as LibGtk::Table*))
      __return_value
    end

    def homogeneous
      __return_value = LibGtk.table_get_homogeneous((to_unsafe as LibGtk::Table*))
      __return_value
    end

    def row_spacing(row)
      __return_value = LibGtk.table_get_row_spacing((to_unsafe as LibGtk::Table*), UInt32.new(row))
      __return_value
    end

    def size(rows, columns)
      __return_value = LibGtk.table_get_size((to_unsafe as LibGtk::Table*), UInt32.new(rows), UInt32.new(columns))
      __return_value
    end

    def resize(rows, columns)
      __return_value = LibGtk.table_resize((to_unsafe as LibGtk::Table*), UInt32.new(rows), UInt32.new(columns))
      __return_value
    end

    def set_col_spacing(column, spacing)
      __return_value = LibGtk.table_set_col_spacing((to_unsafe as LibGtk::Table*), UInt32.new(column), UInt32.new(spacing))
      __return_value
    end

    def col_spacings=(spacing)
      __return_value = LibGtk.table_set_col_spacings((to_unsafe as LibGtk::Table*), UInt32.new(spacing))
      __return_value
    end

    def homogeneous=(homogeneous)
      __return_value = LibGtk.table_set_homogeneous((to_unsafe as LibGtk::Table*), homogeneous)
      __return_value
    end

    def set_row_spacing(row, spacing)
      __return_value = LibGtk.table_set_row_spacing((to_unsafe as LibGtk::Table*), UInt32.new(row), UInt32.new(spacing))
      __return_value
    end

    def row_spacings=(spacing)
      __return_value = LibGtk.table_set_row_spacings((to_unsafe as LibGtk::Table*), UInt32.new(spacing))
      __return_value
    end

  end
end

