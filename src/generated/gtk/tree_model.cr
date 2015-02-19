module Gtk
  module TreeModel
    def filter_new(root)
      __return_value = LibGtk.tree_model_filter_new((to_unsafe as LibGtk::TreeModel*), root && (root.to_unsafe as LibGtk::TreePath*))
      __return_value
    end

    def foreach(func, user_data)
      __return_value = LibGtk.tree_model_foreach((to_unsafe as LibGtk::TreeModel*), func, user_data)
      __return_value
    end

    def column_type(index)
      __return_value = LibGtk.tree_model_get_column_type((to_unsafe as LibGtk::TreeModel*), Int32.cast(index))
      __return_value
    end

    def flags
      __return_value = LibGtk.tree_model_get_flags((to_unsafe as LibGtk::TreeModel*))
      __return_value
    end

    def iter(iter, path)
      __return_value = LibGtk.tree_model_get_iter((to_unsafe as LibGtk::TreeModel*), iter, (path.to_unsafe as LibGtk::TreePath*))
      __return_value
    end

    def iter_first(iter)
      __return_value = LibGtk.tree_model_get_iter_first((to_unsafe as LibGtk::TreeModel*), iter)
      __return_value
    end

    def iter_from_string(iter, path_string)
      __return_value = LibGtk.tree_model_get_iter_from_string((to_unsafe as LibGtk::TreeModel*), iter, path_string)
      __return_value
    end

    def n_columns
      __return_value = LibGtk.tree_model_get_n_columns((to_unsafe as LibGtk::TreeModel*))
      __return_value
    end

    def path(iter)
      __return_value = LibGtk.tree_model_get_path((to_unsafe as LibGtk::TreeModel*), (iter.to_unsafe as LibGtk::TreeIter*))
      Gtk::TreePath.new(__return_value)
    end

    def string_from_iter(iter)
      __return_value = LibGtk.tree_model_get_string_from_iter((to_unsafe as LibGtk::TreeModel*), (iter.to_unsafe as LibGtk::TreeIter*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def value(iter, column, value)
      __return_value = LibGtk.tree_model_get_value((to_unsafe as LibGtk::TreeModel*), (iter.to_unsafe as LibGtk::TreeIter*), Int32.cast(column), value)
      __return_value
    end

    def iter_children(iter, parent)
      __return_value = LibGtk.tree_model_iter_children((to_unsafe as LibGtk::TreeModel*), iter, parent && (parent.to_unsafe as LibGtk::TreeIter*))
      __return_value
    end

    def iter_has_child(iter)
      __return_value = LibGtk.tree_model_iter_has_child((to_unsafe as LibGtk::TreeModel*), (iter.to_unsafe as LibGtk::TreeIter*))
      __return_value
    end

    def iter_n_children(iter)
      __return_value = LibGtk.tree_model_iter_n_children((to_unsafe as LibGtk::TreeModel*), iter && (iter.to_unsafe as LibGtk::TreeIter*))
      __return_value
    end

    def iter_next(iter)
      __return_value = LibGtk.tree_model_iter_next((to_unsafe as LibGtk::TreeModel*), (iter.to_unsafe as LibGtk::TreeIter*))
      __return_value
    end

    def iter_nth_child(iter, parent, n)
      __return_value = LibGtk.tree_model_iter_nth_child((to_unsafe as LibGtk::TreeModel*), iter, parent && (parent.to_unsafe as LibGtk::TreeIter*), Int32.cast(n))
      __return_value
    end

    def iter_parent(iter, child)
      __return_value = LibGtk.tree_model_iter_parent((to_unsafe as LibGtk::TreeModel*), iter, (child.to_unsafe as LibGtk::TreeIter*))
      __return_value
    end

    def iter_previous(iter)
      __return_value = LibGtk.tree_model_iter_previous((to_unsafe as LibGtk::TreeModel*), (iter.to_unsafe as LibGtk::TreeIter*))
      __return_value
    end

    def ref_node(iter)
      __return_value = LibGtk.tree_model_ref_node((to_unsafe as LibGtk::TreeModel*), (iter.to_unsafe as LibGtk::TreeIter*))
      __return_value
    end

    def row_changed(path, iter)
      __return_value = LibGtk.tree_model_row_changed((to_unsafe as LibGtk::TreeModel*), (path.to_unsafe as LibGtk::TreePath*), (iter.to_unsafe as LibGtk::TreeIter*))
      __return_value
    end

    def row_deleted(path)
      __return_value = LibGtk.tree_model_row_deleted((to_unsafe as LibGtk::TreeModel*), (path.to_unsafe as LibGtk::TreePath*))
      __return_value
    end

    def row_has_child_toggled(path, iter)
      __return_value = LibGtk.tree_model_row_has_child_toggled((to_unsafe as LibGtk::TreeModel*), (path.to_unsafe as LibGtk::TreePath*), (iter.to_unsafe as LibGtk::TreeIter*))
      __return_value
    end

    def row_inserted(path, iter)
      __return_value = LibGtk.tree_model_row_inserted((to_unsafe as LibGtk::TreeModel*), (path.to_unsafe as LibGtk::TreePath*), (iter.to_unsafe as LibGtk::TreeIter*))
      __return_value
    end

    def rows_reordered(path, iter, new_order, length)
      __return_value = LibGtk.tree_model_rows_reordered((to_unsafe as LibGtk::TreeModel*), (path.to_unsafe as LibGtk::TreePath*), iter && (iter.to_unsafe as LibGtk::TreeIter*), new_order, Int32.cast(length))
      __return_value
    end

    def sort_new_with_model
      __return_value = LibGtk.tree_model_sort_new_with_model((to_unsafe as LibGtk::TreeModel*))
      __return_value
    end

    def unref_node(iter)
      __return_value = LibGtk.tree_model_unref_node((to_unsafe as LibGtk::TreeModel*), (iter.to_unsafe as LibGtk::TreeIter*))
      __return_value
    end

  end
end

