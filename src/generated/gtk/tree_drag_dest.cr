module Gtk
  module TreeDragDest
    def drag_data_received(dest, selection_data)
      __return_value = LibGtk.tree_drag_dest_drag_data_received(to_unsafe.as(LibGtk::TreeDragDest*), dest.to_unsafe.as(LibGtk::TreePath*), selection_data.to_unsafe.as(LibGtk::SelectionData*))
      __return_value
    end

    def row_drop_possible(dest_path, selection_data)
      __return_value = LibGtk.tree_drag_dest_row_drop_possible(to_unsafe.as(LibGtk::TreeDragDest*), dest_path.to_unsafe.as(LibGtk::TreePath*), selection_data.to_unsafe.as(LibGtk::SelectionData*))
      __return_value
    end

  end
end

