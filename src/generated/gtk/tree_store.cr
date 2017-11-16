module Gtk
  class TreeStore < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGtk::TreeStore*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::TreeStore*)
    end

    # Implements Buildable
    # Implements TreeDragDest
    # Implements TreeDragSource
    # Implements TreeModel
    # Implements TreeSortable
    def self.new(n_columns, types) : self
      __return_value = LibGtk.tree_store_new(Int32.new(n_columns), types)
      cast Gtk::TreeStore.new(__return_value)
    end

    def append(iter, parent)
      LibGtk.tree_store_append(@pointer.as(LibGtk::TreeStore*), iter, parent ? parent.to_unsafe.as(LibGtk::TreeIter*) : nil)
      nil
    end

    def clear
      LibGtk.tree_store_clear(@pointer.as(LibGtk::TreeStore*))
      nil
    end

    def insert(iter, parent, position)
      LibGtk.tree_store_insert(@pointer.as(LibGtk::TreeStore*), iter, parent ? parent.to_unsafe.as(LibGtk::TreeIter*) : nil, Int32.new(position))
      nil
    end

    def insert_after(iter, parent, sibling)
      LibGtk.tree_store_insert_after(@pointer.as(LibGtk::TreeStore*), iter, parent ? parent.to_unsafe.as(LibGtk::TreeIter*) : nil, sibling ? sibling.to_unsafe.as(LibGtk::TreeIter*) : nil)
      nil
    end

    def insert_before(iter, parent, sibling)
      LibGtk.tree_store_insert_before(@pointer.as(LibGtk::TreeStore*), iter, parent ? parent.to_unsafe.as(LibGtk::TreeIter*) : nil, sibling ? sibling.to_unsafe.as(LibGtk::TreeIter*) : nil)
      nil
    end

    def insert_with_values(iter, parent, position, columns, values, n_values)
      LibGtk.tree_store_insert_with_values(@pointer.as(LibGtk::TreeStore*), iter, parent ? parent.to_unsafe.as(LibGtk::TreeIter*) : nil, Int32.new(position), columns, values, Int32.new(n_values))
      nil
    end

    def ancestor?(iter, descendant)
      __return_value = LibGtk.tree_store_is_ancestor(@pointer.as(LibGtk::TreeStore*), iter.to_unsafe.as(LibGtk::TreeIter*), descendant.to_unsafe.as(LibGtk::TreeIter*))
      __return_value
    end

    def iter_depth(iter)
      __return_value = LibGtk.tree_store_iter_depth(@pointer.as(LibGtk::TreeStore*), iter.to_unsafe.as(LibGtk::TreeIter*))
      __return_value
    end

    def iter_is_valid(iter)
      __return_value = LibGtk.tree_store_iter_is_valid(@pointer.as(LibGtk::TreeStore*), iter.to_unsafe.as(LibGtk::TreeIter*))
      __return_value
    end

    def move_after(iter, position)
      LibGtk.tree_store_move_after(@pointer.as(LibGtk::TreeStore*), iter.to_unsafe.as(LibGtk::TreeIter*), position ? position.to_unsafe.as(LibGtk::TreeIter*) : nil)
      nil
    end

    def move_before(iter, position)
      LibGtk.tree_store_move_before(@pointer.as(LibGtk::TreeStore*), iter.to_unsafe.as(LibGtk::TreeIter*), position ? position.to_unsafe.as(LibGtk::TreeIter*) : nil)
      nil
    end

    def prepend(iter, parent)
      LibGtk.tree_store_prepend(@pointer.as(LibGtk::TreeStore*), iter, parent ? parent.to_unsafe.as(LibGtk::TreeIter*) : nil)
      nil
    end

    def remove(iter)
      __return_value = LibGtk.tree_store_remove(@pointer.as(LibGtk::TreeStore*), iter.to_unsafe.as(LibGtk::TreeIter*))
      __return_value
    end

    def set_column_types(n_columns, types)
      LibGtk.tree_store_set_column_types(@pointer.as(LibGtk::TreeStore*), Int32.new(n_columns), types)
      nil
    end

    def set_value(iter, column, value)
      LibGtk.tree_store_set_value(@pointer.as(LibGtk::TreeStore*), iter.to_unsafe.as(LibGtk::TreeIter*), Int32.new(column), value.to_unsafe.as(LibGObject::Value*))
      nil
    end

    def set(iter, columns, values, n_values)
      LibGtk.tree_store_set(@pointer.as(LibGtk::TreeStore*), iter.to_unsafe.as(LibGtk::TreeIter*), columns, values, Int32.new(n_values))
      nil
    end

    def swap(a, b)
      LibGtk.tree_store_swap(@pointer.as(LibGtk::TreeStore*), a.to_unsafe.as(LibGtk::TreeIter*), b.to_unsafe.as(LibGtk::TreeIter*))
      nil
    end

  end
end

