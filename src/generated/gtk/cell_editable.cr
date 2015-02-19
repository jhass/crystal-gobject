module Gtk
  module CellEditable
    def editing_done
      __return_value = LibGtk.cell_editable_editing_done((to_unsafe as LibGtk::CellEditable*))
      __return_value
    end

    def remove_widget
      __return_value = LibGtk.cell_editable_remove_widget((to_unsafe as LibGtk::CellEditable*))
      __return_value
    end

    def start_editing(event)
      __return_value = LibGtk.cell_editable_start_editing((to_unsafe as LibGtk::CellEditable*), event && (event.to_unsafe as LibGdk::Event*))
      __return_value
    end

  end
end

