module Gtk
  class TreeModelFilter < GObject::Object
    def initialize(@gtk_tree_model_filter)
    end

    def to_unsafe
      @gtk_tree_model_filter.not_nil!
    end

    # Implements TreeDragSource
    # Implements TreeModel


    def clear_cache
      __return_value = LibGtk.tree_model_filter_clear_cache((to_unsafe as LibGtk::TreeModelFilter*))
      __return_value
    end

    def convert_child_iter_to_iter(filter_iter, child_iter)
      __return_value = LibGtk.tree_model_filter_convert_child_iter_to_iter((to_unsafe as LibGtk::TreeModelFilter*), filter_iter, (child_iter.to_unsafe as LibGtk::TreeIter*))
      __return_value
    end

    def convert_child_path_to_path(child_path)
      __return_value = LibGtk.tree_model_filter_convert_child_path_to_path((to_unsafe as LibGtk::TreeModelFilter*), (child_path.to_unsafe as LibGtk::TreePath*))
      Gtk::TreePath.new(__return_value)
    end

    def convert_iter_to_child_iter(child_iter, filter_iter)
      __return_value = LibGtk.tree_model_filter_convert_iter_to_child_iter((to_unsafe as LibGtk::TreeModelFilter*), child_iter, (filter_iter.to_unsafe as LibGtk::TreeIter*))
      __return_value
    end

    def convert_path_to_child_path(filter_path)
      __return_value = LibGtk.tree_model_filter_convert_path_to_child_path((to_unsafe as LibGtk::TreeModelFilter*), (filter_path.to_unsafe as LibGtk::TreePath*))
      Gtk::TreePath.new(__return_value)
    end

    def model
      __return_value = LibGtk.tree_model_filter_get_model((to_unsafe as LibGtk::TreeModelFilter*))
      __return_value
    end

    def refilter
      __return_value = LibGtk.tree_model_filter_refilter((to_unsafe as LibGtk::TreeModelFilter*))
      __return_value
    end

    def set_modify_func(n_columns, types, func : LibGtk::TreeModelFilterModifyFunc, data, destroy : LibGLib::DestroyNotify?)
      __return_value = LibGtk.tree_model_filter_set_modify_func((to_unsafe as LibGtk::TreeModelFilter*), Int32.new(n_columns), types, func, data && data, destroy && destroy)
      __return_value
    end

    def visible_column=(column)
      __return_value = LibGtk.tree_model_filter_set_visible_column((to_unsafe as LibGtk::TreeModelFilter*), Int32.new(column))
      __return_value
    end

    def set_visible_func(func : LibGtk::TreeModelFilterVisibleFunc, data, destroy : LibGLib::DestroyNotify?)
      __return_value = LibGtk.tree_model_filter_set_visible_func((to_unsafe as LibGtk::TreeModelFilter*), func, data && data, destroy && destroy)
      __return_value
    end

  end
end

