module Gtk
  class TreePath
    include GObject::WrappedType

    @gtk_tree_path : LibGtk::TreePath*?
    def initialize(@gtk_tree_path : LibGtk::TreePath*)
    end

    def to_unsafe
      @gtk_tree_path.not_nil!
    end

    def self.new
      __return_value = LibGtk.tree_path_new
      cast Gtk::TreePath.new(__return_value)
    end

    def self.new_first
      __return_value = LibGtk.tree_path_new_first
      cast Gtk::TreePath.new(__return_value)
    end

    def self.new_from_indices(indices, length)
      __return_value = LibGtk.tree_path_new_from_indices(indices, UInt64.new(length))
      cast Gtk::TreePath.new(__return_value)
    end

    def self.new_from_string(path)
      __return_value = LibGtk.tree_path_new_from_string(path)
      cast Gtk::TreePath.new(__return_value)
    end

    def append_index(index)
      __return_value = LibGtk.tree_path_append_index((to_unsafe as LibGtk::TreePath*), Int32.new(index))
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
      __return_value = LibGtk.tree_path_get_indices((to_unsafe as LibGtk::TreePath*), Int32.new(depth))
      PointerIterator.new(__return_value) {|__item| __item }
    end

    def ancestor?(descendant)
      __return_value = LibGtk.tree_path_is_ancestor((to_unsafe as LibGtk::TreePath*), (descendant.to_unsafe as LibGtk::TreePath*))
      __return_value
    end

    def descendant?(ancestor)
      __return_value = LibGtk.tree_path_is_descendant((to_unsafe as LibGtk::TreePath*), (ancestor.to_unsafe as LibGtk::TreePath*))
      __return_value
    end

    def next
      __return_value = LibGtk.tree_path_next((to_unsafe as LibGtk::TreePath*))
      __return_value
    end

    def prepend_index(index)
      __return_value = LibGtk.tree_path_prepend_index((to_unsafe as LibGtk::TreePath*), Int32.new(index))
      __return_value
    end

    def prev
      __return_value = LibGtk.tree_path_prev((to_unsafe as LibGtk::TreePath*))
      __return_value
    end

    def to_string
      __return_value = LibGtk.tree_path_to_string((to_unsafe as LibGtk::TreePath*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def up
      __return_value = LibGtk.tree_path_up((to_unsafe as LibGtk::TreePath*))
      __return_value
    end

  end
end

