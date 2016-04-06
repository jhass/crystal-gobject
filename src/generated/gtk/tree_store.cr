module Gtk
  class TreeStore < GObject::Object
    def initialize(@gtk_tree_store)
    end

    def to_unsafe
      @gtk_tree_store.not_nil!
    end

    # Implements Buildable
    # Implements TreeDragDest
    # Implements TreeDragSource
    # Implements TreeModel
    # Implements TreeSortable
    def self.new_internal(n_columns, types)
      __return_value = LibGtk.tree_store_new(Int32.new(n_columns), types)
      Gtk::TreeStore.new(__return_value)
    end

    def append(iter, parent)
      __return_value = LibGtk.tree_store_append((to_unsafe as LibGtk::TreeStore*), iter, parent && (parent.to_unsafe as LibGtk::TreeIter*))
      __return_value
    end

    def clear
      __return_value = LibGtk.tree_store_clear((to_unsafe as LibGtk::TreeStore*))
      __return_value
    end

    def insert(iter, parent, position)
      __return_value = LibGtk.tree_store_insert((to_unsafe as LibGtk::TreeStore*), iter, parent && (parent.to_unsafe as LibGtk::TreeIter*), Int32.new(position))
      __return_value
    end

    def insert_after(iter, parent, sibling)
      __return_value = LibGtk.tree_store_insert_after((to_unsafe as LibGtk::TreeStore*), iter, parent && (parent.to_unsafe as LibGtk::TreeIter*), sibling && (sibling.to_unsafe as LibGtk::TreeIter*))
      __return_value
    end

    def insert_before(iter, parent, sibling)
      __return_value = LibGtk.tree_store_insert_before((to_unsafe as LibGtk::TreeStore*), iter, parent && (parent.to_unsafe as LibGtk::TreeIter*), sibling && (sibling.to_unsafe as LibGtk::TreeIter*))
      __return_value
    end

    def insert_with_values(iter, parent, position, columns, values, n_values)
      __return_value = LibGtk.tree_store_insert_with_values((to_unsafe as LibGtk::TreeStore*), iter, parent && (parent.to_unsafe as LibGtk::TreeIter*), Int32.new(position), columns, values, Int32.new(n_values))
      __return_value
    end

    def ancestor?(iter, descendant)
      __return_value = LibGtk.tree_store_is_ancestor((to_unsafe as LibGtk::TreeStore*), (iter.to_unsafe as LibGtk::TreeIter*), (descendant.to_unsafe as LibGtk::TreeIter*))
      __return_value
    end

    def iter_depth(iter)
      __return_value = LibGtk.tree_store_iter_depth((to_unsafe as LibGtk::TreeStore*), (iter.to_unsafe as LibGtk::TreeIter*))
      __return_value
    end

    def iter_is_valid(iter)
      __return_value = LibGtk.tree_store_iter_is_valid((to_unsafe as LibGtk::TreeStore*), (iter.to_unsafe as LibGtk::TreeIter*))
      __return_value
    end

    def move_after(iter, position)
      __return_value = LibGtk.tree_store_move_after((to_unsafe as LibGtk::TreeStore*), (iter.to_unsafe as LibGtk::TreeIter*), position && (position.to_unsafe as LibGtk::TreeIter*))
      __return_value
    end

    def move_before(iter, position)
      __return_value = LibGtk.tree_store_move_before((to_unsafe as LibGtk::TreeStore*), (iter.to_unsafe as LibGtk::TreeIter*), position && (position.to_unsafe as LibGtk::TreeIter*))
      __return_value
    end

    def prepend(iter, parent)
      __return_value = LibGtk.tree_store_prepend((to_unsafe as LibGtk::TreeStore*), iter, parent && (parent.to_unsafe as LibGtk::TreeIter*))
      __return_value
    end

    def remove(iter)
      __return_value = LibGtk.tree_store_remove((to_unsafe as LibGtk::TreeStore*), (iter.to_unsafe as LibGtk::TreeIter*))
      __return_value
    end

    def set_column_types(n_columns, types)
      __return_value = LibGtk.tree_store_set_column_types((to_unsafe as LibGtk::TreeStore*), Int32.new(n_columns), types)
      __return_value
    end

    def set_value(iter, column, value)
      __return_value = LibGtk.tree_store_set_value((to_unsafe as LibGtk::TreeStore*), (iter.to_unsafe as LibGtk::TreeIter*), Int32.new(column), (value.to_unsafe as LibGObject::Value*))
      __return_value
    end

    def set(iter, columns, values, n_values)
      __return_value = LibGtk.tree_store_set((to_unsafe as LibGtk::TreeStore*), (iter.to_unsafe as LibGtk::TreeIter*), columns, values, Int32.new(n_values))
      __return_value
    end

    def swap(a, b)
      __return_value = LibGtk.tree_store_swap((to_unsafe as LibGtk::TreeStore*), (a.to_unsafe as LibGtk::TreeIter*), (b.to_unsafe as LibGtk::TreeIter*))
      __return_value
    end

  end
end

