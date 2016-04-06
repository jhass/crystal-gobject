module Gtk
  class TreeSelection < GObject::Object
    def initialize(@gtk_tree_selection)
    end

    def to_unsafe
      @gtk_tree_selection.not_nil!
    end


    def count_selected_rows
      __return_value = LibGtk.tree_selection_count_selected_rows((to_unsafe as LibGtk::TreeSelection*))
      __return_value
    end

    def mode
      __return_value = LibGtk.tree_selection_get_mode((to_unsafe as LibGtk::TreeSelection*))
      __return_value
    end

    def selected(model, iter)
      __return_value = LibGtk.tree_selection_get_selected((to_unsafe as LibGtk::TreeSelection*), (model.to_unsafe as LibGtk::TreeModel*), iter)
      __return_value
    end

    def selected_rows(model)
      __return_value = LibGtk.tree_selection_get_selected_rows((to_unsafe as LibGtk::TreeSelection*), (model.to_unsafe as LibGtk::TreeModel*))
      __return_value
    end

    def tree_view
      __return_value = LibGtk.tree_selection_get_tree_view((to_unsafe as LibGtk::TreeSelection*))
      Gtk::TreeView.new(__return_value)
    end

    def iter_is_selected(iter)
      __return_value = LibGtk.tree_selection_iter_is_selected((to_unsafe as LibGtk::TreeSelection*), (iter.to_unsafe as LibGtk::TreeIter*))
      __return_value
    end

    def path_is_selected(path)
      __return_value = LibGtk.tree_selection_path_is_selected((to_unsafe as LibGtk::TreeSelection*), (path.to_unsafe as LibGtk::TreePath*))
      __return_value
    end

    def select_all
      __return_value = LibGtk.tree_selection_select_all((to_unsafe as LibGtk::TreeSelection*))
      __return_value
    end

    def select_iter(iter)
      __return_value = LibGtk.tree_selection_select_iter((to_unsafe as LibGtk::TreeSelection*), (iter.to_unsafe as LibGtk::TreeIter*))
      __return_value
    end

    def select_path(path)
      __return_value = LibGtk.tree_selection_select_path((to_unsafe as LibGtk::TreeSelection*), (path.to_unsafe as LibGtk::TreePath*))
      __return_value
    end

    def select_range(start_path, end_path)
      __return_value = LibGtk.tree_selection_select_range((to_unsafe as LibGtk::TreeSelection*), (start_path.to_unsafe as LibGtk::TreePath*), (end_path.to_unsafe as LibGtk::TreePath*))
      __return_value
    end

    def selected_foreach(func : LibGtk::TreeSelectionForeachFunc, data)
      __return_value = LibGtk.tree_selection_selected_foreach((to_unsafe as LibGtk::TreeSelection*), func, data)
      __return_value
    end

    def mode=(type)
      __return_value = LibGtk.tree_selection_set_mode((to_unsafe as LibGtk::TreeSelection*), type)
      __return_value
    end

    def set_select_function(func : LibGtk::TreeSelectionFunc, data, destroy : LibGLib::DestroyNotify)
      __return_value = LibGtk.tree_selection_set_select_function((to_unsafe as LibGtk::TreeSelection*), func, data, destroy)
      __return_value
    end

    def unselect_all
      __return_value = LibGtk.tree_selection_unselect_all((to_unsafe as LibGtk::TreeSelection*))
      __return_value
    end

    def unselect_iter(iter)
      __return_value = LibGtk.tree_selection_unselect_iter((to_unsafe as LibGtk::TreeSelection*), (iter.to_unsafe as LibGtk::TreeIter*))
      __return_value
    end

    def unselect_path(path)
      __return_value = LibGtk.tree_selection_unselect_path((to_unsafe as LibGtk::TreeSelection*), (path.to_unsafe as LibGtk::TreePath*))
      __return_value
    end

    def unselect_range(start_path, end_path)
      __return_value = LibGtk.tree_selection_unselect_range((to_unsafe as LibGtk::TreeSelection*), (start_path.to_unsafe as LibGtk::TreePath*), (end_path.to_unsafe as LibGtk::TreePath*))
      __return_value
    end

    alias ChangedSignal = TreeSelection -> 
    def on_changed(&__block : ChangedSignal)
      __callback = ->(_arg0 : LibGtk::TreeSelection*) {
       __return_value = __block.call(TreeSelection.new(_arg0))
       __return_value
      }
      connect("changed", __callback)
    end

  end
end

