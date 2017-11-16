module Gtk
  class TreeModelFilter < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGtk::TreeModelFilter*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::TreeModelFilter*)
    end

    # Implements TreeDragSource
    # Implements TreeModel
    def child_model
      __return_value = LibGtk.tree_model_filter_get_child_model(to_unsafe.as(LibGtk::TreeModelFilter*))
      __return_value
    end

    def virtual_root
      __return_value = LibGtk.tree_model_filter_get_virtual_root(to_unsafe.as(LibGtk::TreeModelFilter*))
      Gtk::TreePath.new(__return_value)
    end

    def clear_cache
      LibGtk.tree_model_filter_clear_cache(@pointer.as(LibGtk::TreeModelFilter*))
      nil
    end

    def convert_child_iter_to_iter(filter_iter, child_iter)
      __return_value = LibGtk.tree_model_filter_convert_child_iter_to_iter(@pointer.as(LibGtk::TreeModelFilter*), filter_iter, child_iter.to_unsafe.as(LibGtk::TreeIter*))
      __return_value
    end

    def convert_child_path_to_path(child_path)
      __return_value = LibGtk.tree_model_filter_convert_child_path_to_path(@pointer.as(LibGtk::TreeModelFilter*), child_path.to_unsafe.as(LibGtk::TreePath*))
      Gtk::TreePath.new(__return_value) if __return_value
    end

    def convert_iter_to_child_iter(child_iter, filter_iter)
      LibGtk.tree_model_filter_convert_iter_to_child_iter(@pointer.as(LibGtk::TreeModelFilter*), child_iter, filter_iter.to_unsafe.as(LibGtk::TreeIter*))
      nil
    end

    def convert_path_to_child_path(filter_path)
      __return_value = LibGtk.tree_model_filter_convert_path_to_child_path(@pointer.as(LibGtk::TreeModelFilter*), filter_path.to_unsafe.as(LibGtk::TreePath*))
      Gtk::TreePath.new(__return_value) if __return_value
    end

    def model
      __return_value = LibGtk.tree_model_filter_get_model(@pointer.as(LibGtk::TreeModelFilter*))
      __return_value
    end

    def refilter
      LibGtk.tree_model_filter_refilter(@pointer.as(LibGtk::TreeModelFilter*))
      nil
    end

    def set_modify_func(n_columns, types, func, data, destroy)
      LibGtk.tree_model_filter_set_modify_func(@pointer.as(LibGtk::TreeModelFilter*), Int32.new(n_columns), types, func, data ? data : nil, destroy ? destroy : nil)
      nil
    end

    def visible_column=(column)
      LibGtk.tree_model_filter_set_visible_column(@pointer.as(LibGtk::TreeModelFilter*), Int32.new(column))
      nil
    end

    def set_visible_func(func, data, destroy)
      LibGtk.tree_model_filter_set_visible_func(@pointer.as(LibGtk::TreeModelFilter*), func, data ? data : nil, destroy ? destroy : nil)
      nil
    end

  end
end

