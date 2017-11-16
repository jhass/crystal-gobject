module Gtk
  module TreeSortable
    def sort_column_id(sort_column_id, order : Gtk::SortType)
      __return_value = LibGtk.tree_sortable_get_sort_column_id(@pointer.as(LibGtk::TreeSortable*), sort_column_id, order)
      __return_value
    end

    def has_default_sort_func
      __return_value = LibGtk.tree_sortable_has_default_sort_func(@pointer.as(LibGtk::TreeSortable*))
      __return_value
    end

    def set_default_sort_func(sort_func, user_data, destroy)
      LibGtk.tree_sortable_set_default_sort_func(@pointer.as(LibGtk::TreeSortable*), sort_func, user_data ? user_data : nil, destroy ? destroy : nil)
      nil
    end

    def set_sort_column_id(sort_column_id, order : Gtk::SortType)
      LibGtk.tree_sortable_set_sort_column_id(@pointer.as(LibGtk::TreeSortable*), Int32.new(sort_column_id), order)
      nil
    end

    def set_sort_func(sort_column_id, sort_func, user_data, destroy)
      LibGtk.tree_sortable_set_sort_func(@pointer.as(LibGtk::TreeSortable*), Int32.new(sort_column_id), sort_func, user_data ? user_data : nil, destroy ? destroy : nil)
      nil
    end

    def sort_column_changed
      LibGtk.tree_sortable_sort_column_changed(@pointer.as(LibGtk::TreeSortable*))
      nil
    end

    alias SortColumnChangedSignal = TreeSortable ->
    def on_sort_column_changed(&__block : SortColumnChangedSignal)
      __callback = ->(_arg0 : LibGtk::TreeSortable*) {
       __return_value = __block.call(TreeSortable.new(_arg0))
       __return_value
      }
      connect("sort-column-changed", __callback)
    end

  end
end

