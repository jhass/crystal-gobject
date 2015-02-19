module Gtk
  class TreePath
    include GObject::WrappedType

    def initialize @gtk_tree_path
    end

    def to_unsafe
      @gtk_tree_path.not_nil!
    end

    def self.new_internal
      __return_value = LibGtk.tree_path_new
      Gtk::TreePath.new(__return_value)
    end

    def self.new_first
      __return_value = LibGtk.tree_path_new_first
      Gtk::TreePath.new(__return_value)
    end

    def self.new_from_indices(indices, length)
      __return_value = LibGtk.tree_path_new_from_indices(indices, UInt64.cast(length))
      Gtk::TreePath.new(__return_value)
    end

    def self.new_from_string(path)
      __return_value = LibGtk.tree_path_new_from_string(path)
      Gtk::TreePath.new(__return_value)
    end

    def append_index(index)
      __return_value = LibGtk.tree_path_append_index((to_unsafe as LibGtk::TreePath*), Int32.cast(index))
      __return_value
    end

    def compare(b)
      __return_value = LibGtk.tree_path_compare((to_unsafe as LibGtk::TreePath*), (b.to_unsafe as LibGtk::TreePath*))
      __return_value
    end

    def copy
      __return_value = LibGtk.tree_path_copy((to_unsafe as LibGtk::TreePath*))
      Gtk::TreePath.new(__return_value)
    end

    def down
      __return_value = LibGtk.tree_path_down((to_unsafe as LibGtk::TreePath*))
      __return_value
    end

    def free
      __return_value = LibGtk.tree_path_free((to_unsafe as LibGtk::TreePath*))
      __return_value
    end

    def depth
      __return_value = LibGtk.tree_path_get_depth((to_unsafe as LibGtk::TreePath*))
      __return_value
    end

    def indices(depth)
      __return_value = LibGtk.tree_path_get_indices((to_unsafe as LibGtk::TreePath*), Int32.cast(depth))
      PointerIterator.new(__return_value) {|__item_14| __item_14 }
    end

    def is_ancestor(descendant)
      __return_value = LibGtk.tree_path_is_ancestor((to_unsafe as LibGtk::TreePath*), (descendant.to_unsafe as LibGtk::TreePath*))
      __return_value
    end

    def is_descendant(ancestor)
      __return_value = LibGtk.tree_path_is_descendant((to_unsafe as LibGtk::TreePath*), (ancestor.to_unsafe as LibGtk::TreePath*))
      __return_value
    end

    def next
      __return_value = LibGtk.tree_path_next((to_unsafe as LibGtk::TreePath*))
      __return_value
    end

    def prepend_index(index)
      __return_value = LibGtk.tree_path_prepend_index((to_unsafe as LibGtk::TreePath*), Int32.cast(index))
      __return_value
    end

    def prev
      __return_value = LibGtk.tree_path_prev((to_unsafe as LibGtk::TreePath*))
      __return_value
    end

    def to_string
      __return_value = LibGtk.tree_path_to_string((to_unsafe as LibGtk::TreePath*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def up
      __return_value = LibGtk.tree_path_up((to_unsafe as LibGtk::TreePath*))
      __return_value
    end

  end
end

