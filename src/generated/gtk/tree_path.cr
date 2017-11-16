module Gtk
  class TreePath
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::TreePath*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::TreePath*)
    end

    def self.new : self
      __return_value = LibGtk.tree_path_new
      cast Gtk::TreePath.new(__return_value)
    end

    def self.new_first : self
      __return_value = LibGtk.tree_path_new_first
      cast Gtk::TreePath.new(__return_value)
    end

    def self.new_from_indices(indices, length) : self
      __return_value = LibGtk.tree_path_new_from_indices(indices, UInt64.new(length))
      cast Gtk::TreePath.new(__return_value)
    end

    def self.new_from_string(path) : self
      __return_value = LibGtk.tree_path_new_from_string(path.to_unsafe)
      cast Gtk::TreePath.new(__return_value)
    end

    def append_index(index)
      LibGtk.tree_path_append_index(@pointer.as(LibGtk::TreePath*), Int32.new(index))
      nil
    end

    def compare(b)
      __return_value = LibGtk.tree_path_compare(@pointer.as(LibGtk::TreePath*), b.to_unsafe.as(LibGtk::TreePath*))
      __return_value
    end

    def copy
      __return_value = LibGtk.tree_path_copy(@pointer.as(LibGtk::TreePath*))
      Gtk::TreePath.new(__return_value)
    end

    def down
      LibGtk.tree_path_down(@pointer.as(LibGtk::TreePath*))
      nil
    end

    def free
      LibGtk.tree_path_free(@pointer.as(LibGtk::TreePath*))
      nil
    end

    def depth
      __return_value = LibGtk.tree_path_get_depth(@pointer.as(LibGtk::TreePath*))
      __return_value
    end

    def indices(depth)
      __return_value = LibGtk.tree_path_get_indices(@pointer.as(LibGtk::TreePath*), depth)
      PointerIterator.new(__return_value) {|__item| __item }
    end

    def ancestor?(descendant)
      __return_value = LibGtk.tree_path_is_ancestor(@pointer.as(LibGtk::TreePath*), descendant.to_unsafe.as(LibGtk::TreePath*))
      __return_value
    end

    def descendant?(ancestor)
      __return_value = LibGtk.tree_path_is_descendant(@pointer.as(LibGtk::TreePath*), ancestor.to_unsafe.as(LibGtk::TreePath*))
      __return_value
    end

    def next
      LibGtk.tree_path_next(@pointer.as(LibGtk::TreePath*))
      nil
    end

    def prepend_index(index)
      LibGtk.tree_path_prepend_index(@pointer.as(LibGtk::TreePath*), Int32.new(index))
      nil
    end

    def prev
      __return_value = LibGtk.tree_path_prev(@pointer.as(LibGtk::TreePath*))
      __return_value
    end

    def to_string
      __return_value = LibGtk.tree_path_to_string(@pointer.as(LibGtk::TreePath*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def up
      __return_value = LibGtk.tree_path_up(@pointer.as(LibGtk::TreePath*))
      __return_value
    end

  end
end

