module Gtk
  class TreeModelSort < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGtk::TreeModelSort*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::TreeModelSort*)
    end

    # Implements TreeDragSource
    # Implements TreeModel
    # Implements TreeSortable
    def model
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "model", gvalue)
      gvalue
    end

    def clear_cache
      LibGtk.tree_model_sort_clear_cache(@pointer.as(LibGtk::TreeModelSort*))
      nil
    end

    def convert_child_iter_to_iter(sort_iter, child_iter)
      __return_value = LibGtk.tree_model_sort_convert_child_iter_to_iter(@pointer.as(LibGtk::TreeModelSort*), sort_iter, child_iter.to_unsafe.as(LibGtk::TreeIter*))
      __return_value
    end

    def convert_child_path_to_path(child_path)
      __return_value = LibGtk.tree_model_sort_convert_child_path_to_path(@pointer.as(LibGtk::TreeModelSort*), child_path.to_unsafe.as(LibGtk::TreePath*))
      Gtk::TreePath.new(__return_value) if __return_value
    end

    def convert_iter_to_child_iter(child_iter, sorted_iter)
      LibGtk.tree_model_sort_convert_iter_to_child_iter(@pointer.as(LibGtk::TreeModelSort*), child_iter, sorted_iter.to_unsafe.as(LibGtk::TreeIter*))
      nil
    end

    def convert_path_to_child_path(sorted_path)
      __return_value = LibGtk.tree_model_sort_convert_path_to_child_path(@pointer.as(LibGtk::TreeModelSort*), sorted_path.to_unsafe.as(LibGtk::TreePath*))
      Gtk::TreePath.new(__return_value) if __return_value
    end

    def model
      __return_value = LibGtk.tree_model_sort_get_model(@pointer.as(LibGtk::TreeModelSort*))
      __return_value
    end

    def iter_is_valid(iter)
      __return_value = LibGtk.tree_model_sort_iter_is_valid(@pointer.as(LibGtk::TreeModelSort*), iter.to_unsafe.as(LibGtk::TreeIter*))
      __return_value
    end

    def reset_default_sort_func
      LibGtk.tree_model_sort_reset_default_sort_func(@pointer.as(LibGtk::TreeModelSort*))
      nil
    end

  end
end

