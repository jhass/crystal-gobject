module Gtk
  class ListStore < GObject::Object
    def initialize(@gtk_list_store)
    end

    def to_unsafe
      @gtk_list_store.not_nil!
    end

    # Implements Buildable
    # Implements TreeDragDest
    # Implements TreeDragSource
    # Implements TreeModel
    # Implements TreeSortable
    def self.new_internal(n_columns, types)
      __return_value = LibGtk.list_store_new(Int32.new(n_columns), types)
      Gtk::ListStore.new(__return_value)
    end

    def append(iter)
      __return_value = LibGtk.list_store_append((to_unsafe as LibGtk::ListStore*), iter)
      __return_value
    end

    def clear
      __return_value = LibGtk.list_store_clear((to_unsafe as LibGtk::ListStore*))
      __return_value
    end

    def insert(iter, position)
      __return_value = LibGtk.list_store_insert((to_unsafe as LibGtk::ListStore*), iter, Int32.new(position))
      __return_value
    end

    def insert_after(iter, sibling)
      __return_value = LibGtk.list_store_insert_after((to_unsafe as LibGtk::ListStore*), iter, sibling && (sibling.to_unsafe as LibGtk::TreeIter*))
      __return_value
    end

    def insert_before(iter, sibling)
      __return_value = LibGtk.list_store_insert_before((to_unsafe as LibGtk::ListStore*), iter, sibling && (sibling.to_unsafe as LibGtk::TreeIter*))
      __return_value
    end

    def insert_with_valuesv(iter, position, columns, values, n_values)
      __return_value = LibGtk.list_store_insert_with_valuesv((to_unsafe as LibGtk::ListStore*), iter, Int32.new(position), columns, values, Int32.new(n_values))
      __return_value
    end

    def iter_is_valid(iter)
      __return_value = LibGtk.list_store_iter_is_valid((to_unsafe as LibGtk::ListStore*), (iter.to_unsafe as LibGtk::TreeIter*))
      __return_value
    end

    def move_after(iter, position)
      __return_value = LibGtk.list_store_move_after((to_unsafe as LibGtk::ListStore*), (iter.to_unsafe as LibGtk::TreeIter*), position && (position.to_unsafe as LibGtk::TreeIter*))
      __return_value
    end

    def move_before(iter, position)
      __return_value = LibGtk.list_store_move_before((to_unsafe as LibGtk::ListStore*), (iter.to_unsafe as LibGtk::TreeIter*), position && (position.to_unsafe as LibGtk::TreeIter*))
      __return_value
    end

    def prepend(iter)
      __return_value = LibGtk.list_store_prepend((to_unsafe as LibGtk::ListStore*), iter)
      __return_value
    end

    def remove(iter)
      __return_value = LibGtk.list_store_remove((to_unsafe as LibGtk::ListStore*), (iter.to_unsafe as LibGtk::TreeIter*))
      __return_value
    end

    def reorder(new_order)
      __return_value = LibGtk.list_store_reorder((to_unsafe as LibGtk::ListStore*), new_order)
      __return_value
    end

    def set_column_types(n_columns, types)
      __return_value = LibGtk.list_store_set_column_types((to_unsafe as LibGtk::ListStore*), Int32.new(n_columns), types)
      __return_value
    end

    def set_value(iter, column, value)
      __return_value = LibGtk.list_store_set_value((to_unsafe as LibGtk::ListStore*), (iter.to_unsafe as LibGtk::TreeIter*), Int32.new(column), (value.to_unsafe as LibGObject::Value*))
      __return_value
    end

    def set(iter, columns, values, n_values)
      __return_value = LibGtk.list_store_set((to_unsafe as LibGtk::ListStore*), (iter.to_unsafe as LibGtk::TreeIter*), columns, values, Int32.new(n_values))
      __return_value
    end

    def swap(a, b)
      __return_value = LibGtk.list_store_swap((to_unsafe as LibGtk::ListStore*), (a.to_unsafe as LibGtk::TreeIter*), (b.to_unsafe as LibGtk::TreeIter*))
      __return_value
    end

  end
end

