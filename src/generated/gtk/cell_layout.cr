module Gtk
  module CellLayout
    def add_attribute(cell, attribute, column)
      LibGtk.cell_layout_add_attribute(@pointer.as(LibGtk::CellLayout*), cell.to_unsafe.as(LibGtk::CellRenderer*), attribute.to_unsafe, Int32.new(column))
      nil
    end

    def clear
      LibGtk.cell_layout_clear(@pointer.as(LibGtk::CellLayout*))
      nil
    end

    def clear_attributes(cell)
      LibGtk.cell_layout_clear_attributes(@pointer.as(LibGtk::CellLayout*), cell.to_unsafe.as(LibGtk::CellRenderer*))
      nil
    end

    def area
      __return_value = LibGtk.cell_layout_get_area(@pointer.as(LibGtk::CellLayout*))
      Gtk::CellArea.new(__return_value) if __return_value
    end

    def cells
      __return_value = LibGtk.cell_layout_get_cells(@pointer.as(LibGtk::CellLayout*))
      GLib::ListIterator(Gtk::CellRenderer, LibGtk::CellRenderer*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def pack_end(cell, expand)
      LibGtk.cell_layout_pack_end(@pointer.as(LibGtk::CellLayout*), cell.to_unsafe.as(LibGtk::CellRenderer*), expand)
      nil
    end

    def pack_start(cell, expand)
      LibGtk.cell_layout_pack_start(@pointer.as(LibGtk::CellLayout*), cell.to_unsafe.as(LibGtk::CellRenderer*), expand)
      nil
    end

    def reorder(cell, position)
      LibGtk.cell_layout_reorder(@pointer.as(LibGtk::CellLayout*), cell.to_unsafe.as(LibGtk::CellRenderer*), Int32.new(position))
      nil
    end

    def set_cell_data_func(cell, func, func_data, destroy)
      LibGtk.cell_layout_set_cell_data_func(@pointer.as(LibGtk::CellLayout*), cell.to_unsafe.as(LibGtk::CellRenderer*), func ? func : nil, func_data ? func_data : nil, destroy)
      nil
    end

  end
end

