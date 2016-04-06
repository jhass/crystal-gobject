module Gtk
  class TreeModelSort < GObject::Object
    def initialize(@gtk_tree_model_sort)
    end

    def to_unsafe
      @gtk_tree_model_sort.not_nil!
    end

    # Implements TreeDragSource
    # Implements TreeModel
    # Implements TreeSortable

    def clear_cache
      __return_value = LibGtk.tree_model_sort_clear_cache((to_unsafe as LibGtk::TreeModelSort*))
      __return_value
    end

    def convert_child_iter_to_iter(sort_iter, child_iter)
      __return_value = LibGtk.tree_model_sort_convert_child_iter_to_iter((to_unsafe as LibGtk::TreeModelSort*), sort_iter, (child_iter.to_unsafe as LibGtk::TreeIter*))
      __return_value
    end

    def convert_child_path_to_path(child_path)
      __return_value = LibGtk.tree_model_sort_convert_child_path_to_path((to_unsafe as LibGtk::TreeModelSort*), (child_path.to_unsafe as LibGtk::TreePath*))
      Gtk::TreePath.new(__return_value)
    end

    def convert_iter_to_child_iter(child_iter, sorted_iter)
      __return_value = LibGtk.tree_model_sort_convert_iter_to_child_iter((to_unsafe as LibGtk::TreeModelSort*), child_iter, (sorted_iter.to_unsafe as LibGtk::TreeIter*))
      __return_value
    end

    def convert_path_to_child_path(sorted_path)
      __return_value = LibGtk.tree_model_sort_convert_path_to_child_path((to_unsafe as LibGtk::TreeModelSort*), (sorted_path.to_unsafe as LibGtk::TreePath*))
      Gtk::TreePath.new(__return_value)
    end

    def model
      __return_value = LibGtk.tree_model_sort_get_model((to_unsafe as LibGtk::TreeModelSort*))
      __return_value
    end

    def iter_is_valid(iter)
      __return_value = LibGtk.tree_model_sort_iter_is_valid((to_unsafe as LibGtk::TreeModelSort*), (iter.to_unsafe as LibGtk::TreeIter*))
      __return_value
    end

    def reset_default_sort_func
      __return_value = LibGtk.tree_model_sort_reset_default_sort_func((to_unsafe as LibGtk::TreeModelSort*))
      __return_value
    end

  end
end

