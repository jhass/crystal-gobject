module Gtk
  module TreeDragSource
    def drag_data_delete(path)
      __return_value = LibGtk.tree_drag_source_drag_data_delete(@pointer.as(LibGtk::TreeDragSource*), path.to_unsafe.as(LibGtk::TreePath*))
      __return_value
    end

    def drag_data_get(path, selection_data)
      __return_value = LibGtk.tree_drag_source_drag_data_get(@pointer.as(LibGtk::TreeDragSource*), path.to_unsafe.as(LibGtk::TreePath*), selection_data.to_unsafe.as(LibGtk::SelectionData*))
      __return_value
    end

    def row_draggable(path)
      __return_value = LibGtk.tree_drag_source_row_draggable(@pointer.as(LibGtk::TreeDragSource*), path.to_unsafe.as(LibGtk::TreePath*))
      __return_value
    end

  end
end

