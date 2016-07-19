module Gtk
  module CellLayout
    def add_attribute(cell, attribute, column)
      __return_value = LibGtk.cell_layout_add_attribute(to_unsafe.as(LibGtk::CellLayout*), cell.to_unsafe.as(LibGtk::CellRenderer*), attribute.to_unsafe, Int32.new(column))
      __return_value
    end

    def clear
      __return_value = LibGtk.cell_layout_clear(to_unsafe.as(LibGtk::CellLayout*))
      __return_value
    end

    def clear_attributes(cell)
      __return_value = LibGtk.cell_layout_clear_attributes(to_unsafe.as(LibGtk::CellLayout*), cell.to_unsafe.as(LibGtk::CellRenderer*))
      __return_value
    end

    def area
      __return_value = LibGtk.cell_layout_get_area(to_unsafe.as(LibGtk::CellLayout*))
      Gtk::CellArea.new(__return_value) if __return_value
    end

    def cells
      __return_value = LibGtk.cell_layout_get_cells(to_unsafe.as(LibGtk::CellLayout*))
      GLib::ListIterator(Gtk::CellRenderer, LibGtk::CellRenderer*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def pack_end(cell, expand)
      __return_value = LibGtk.cell_layout_pack_end(to_unsafe.as(LibGtk::CellLayout*), cell.to_unsafe.as(LibGtk::CellRenderer*), expand)
      __return_value
    end

    def pack_start(cell, expand)
      __return_value = LibGtk.cell_layout_pack_start(to_unsafe.as(LibGtk::CellLayout*), cell.to_unsafe.as(LibGtk::CellRenderer*), expand)
      __return_value
    end

    def reorder(cell, position)
      __return_value = LibGtk.cell_layout_reorder(to_unsafe.as(LibGtk::CellLayout*), cell.to_unsafe.as(LibGtk::CellRenderer*), Int32.new(position))
      __return_value
    end

    def set_cell_data_func(cell, func, func_data, destroy)
      __return_value = LibGtk.cell_layout_set_cell_data_func(to_unsafe.as(LibGtk::CellLayout*), cell.to_unsafe.as(LibGtk::CellRenderer*), func && func, func_data && func_data, destroy)
      __return_value
    end

  end
end

