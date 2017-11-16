module Gtk
  module TreeModel
    def filter_new(root)
      __return_value = LibGtk.tree_model_filter_new(@pointer.as(LibGtk::TreeModel*), root ? root.to_unsafe.as(LibGtk::TreePath*) : nil)
      __return_value
    end

    def foreach(func, user_data)
      LibGtk.tree_model_foreach(@pointer.as(LibGtk::TreeModel*), func, user_data ? user_data : nil)
      nil
    end

    def column_type(index)
      __return_value = LibGtk.tree_model_get_column_type(@pointer.as(LibGtk::TreeModel*), Int32.new(index))
      __return_value
    end

    def flags
      __return_value = LibGtk.tree_model_get_flags(@pointer.as(LibGtk::TreeModel*))
      __return_value
    end

    def iter(iter, path)
      __return_value = LibGtk.tree_model_get_iter(@pointer.as(LibGtk::TreeModel*), iter, path.to_unsafe.as(LibGtk::TreePath*))
      __return_value
    end

    def iter_first(iter)
      __return_value = LibGtk.tree_model_get_iter_first(@pointer.as(LibGtk::TreeModel*), iter)
      __return_value
    end

    def iter_from_string(iter, path_string)
      __return_value = LibGtk.tree_model_get_iter_from_string(@pointer.as(LibGtk::TreeModel*), iter, path_string.to_unsafe)
      __return_value
    end

    def n_columns
      __return_value = LibGtk.tree_model_get_n_columns(@pointer.as(LibGtk::TreeModel*))
      __return_value
    end

    def path(iter)
      __return_value = LibGtk.tree_model_get_path(@pointer.as(LibGtk::TreeModel*), iter.to_unsafe.as(LibGtk::TreeIter*))
      Gtk::TreePath.new(__return_value)
    end

    def string_from_iter(iter)
      __return_value = LibGtk.tree_model_get_string_from_iter(@pointer.as(LibGtk::TreeModel*), iter.to_unsafe.as(LibGtk::TreeIter*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def value(iter, column, value)
      LibGtk.tree_model_get_value(@pointer.as(LibGtk::TreeModel*), iter.to_unsafe.as(LibGtk::TreeIter*), Int32.new(column), value)
      nil
    end

    def iter_children(iter, parent)
      __return_value = LibGtk.tree_model_iter_children(@pointer.as(LibGtk::TreeModel*), iter, parent ? parent.to_unsafe.as(LibGtk::TreeIter*) : nil)
      __return_value
    end

    def iter_has_child(iter)
      __return_value = LibGtk.tree_model_iter_has_child(@pointer.as(LibGtk::TreeModel*), iter.to_unsafe.as(LibGtk::TreeIter*))
      __return_value
    end

    def iter_n_children(iter)
      __return_value = LibGtk.tree_model_iter_n_children(@pointer.as(LibGtk::TreeModel*), iter ? iter.to_unsafe.as(LibGtk::TreeIter*) : nil)
      __return_value
    end

    def iter_next(iter)
      __return_value = LibGtk.tree_model_iter_next(@pointer.as(LibGtk::TreeModel*), iter.to_unsafe.as(LibGtk::TreeIter*))
      __return_value
    end

    def iter_nth_child(iter, parent, n)
      __return_value = LibGtk.tree_model_iter_nth_child(@pointer.as(LibGtk::TreeModel*), iter, parent ? parent.to_unsafe.as(LibGtk::TreeIter*) : nil, Int32.new(n))
      __return_value
    end

    def iter_parent(iter, child)
      __return_value = LibGtk.tree_model_iter_parent(@pointer.as(LibGtk::TreeModel*), iter, child.to_unsafe.as(LibGtk::TreeIter*))
      __return_value
    end

    def iter_previous(iter)
      __return_value = LibGtk.tree_model_iter_previous(@pointer.as(LibGtk::TreeModel*), iter.to_unsafe.as(LibGtk::TreeIter*))
      __return_value
    end

    def ref_node(iter)
      LibGtk.tree_model_ref_node(@pointer.as(LibGtk::TreeModel*), iter.to_unsafe.as(LibGtk::TreeIter*))
      nil
    end

    def row_changed(path, iter)
      LibGtk.tree_model_row_changed(@pointer.as(LibGtk::TreeModel*), path.to_unsafe.as(LibGtk::TreePath*), iter.to_unsafe.as(LibGtk::TreeIter*))
      nil
    end

    def row_deleted(path)
      LibGtk.tree_model_row_deleted(@pointer.as(LibGtk::TreeModel*), path.to_unsafe.as(LibGtk::TreePath*))
      nil
    end

    def row_has_child_toggled(path, iter)
      LibGtk.tree_model_row_has_child_toggled(@pointer.as(LibGtk::TreeModel*), path.to_unsafe.as(LibGtk::TreePath*), iter.to_unsafe.as(LibGtk::TreeIter*))
      nil
    end

    def row_inserted(path, iter)
      LibGtk.tree_model_row_inserted(@pointer.as(LibGtk::TreeModel*), path.to_unsafe.as(LibGtk::TreePath*), iter.to_unsafe.as(LibGtk::TreeIter*))
      nil
    end

    def rows_reordered(path, iter, new_order, length)
      LibGtk.tree_model_rows_reordered(@pointer.as(LibGtk::TreeModel*), path.to_unsafe.as(LibGtk::TreePath*), iter ? iter.to_unsafe.as(LibGtk::TreeIter*) : nil, new_order, Int32.new(length))
      nil
    end

    def sort_new_with_model
      __return_value = LibGtk.tree_model_sort_new_with_model(@pointer.as(LibGtk::TreeModel*))
      __return_value
    end

    def unref_node(iter)
      LibGtk.tree_model_unref_node(@pointer.as(LibGtk::TreeModel*), iter.to_unsafe.as(LibGtk::TreeIter*))
      nil
    end

    alias RowChangedSignal = TreeModel, Gtk::TreePath, Gtk::TreeIter ->
    def on_row_changed(&__block : RowChangedSignal)
      __callback = ->(_arg0 : LibGtk::TreeModel*, _arg1 : LibGtk::LibGtk::TreePath*, _arg2 : LibGtk::LibGtk::TreeIter*) {
       __return_value = __block.call(TreeModel.new(_arg0), Gtk::TreePath.new(_arg1), Gtk::TreeIter.new(_arg2))
       __return_value
      }
      connect("row-changed", __callback)
    end

    alias RowDeletedSignal = TreeModel, Gtk::TreePath ->
    def on_row_deleted(&__block : RowDeletedSignal)
      __callback = ->(_arg0 : LibGtk::TreeModel*, _arg1 : LibGtk::LibGtk::TreePath*) {
       __return_value = __block.call(TreeModel.new(_arg0), Gtk::TreePath.new(_arg1))
       __return_value
      }
      connect("row-deleted", __callback)
    end

    alias RowHasChildToggledSignal = TreeModel, Gtk::TreePath, Gtk::TreeIter ->
    def on_row_has_child_toggled(&__block : RowHasChildToggledSignal)
      __callback = ->(_arg0 : LibGtk::TreeModel*, _arg1 : LibGtk::LibGtk::TreePath*, _arg2 : LibGtk::LibGtk::TreeIter*) {
       __return_value = __block.call(TreeModel.new(_arg0), Gtk::TreePath.new(_arg1), Gtk::TreeIter.new(_arg2))
       __return_value
      }
      connect("row-has-child-toggled", __callback)
    end

    alias RowInsertedSignal = TreeModel, Gtk::TreePath, Gtk::TreeIter ->
    def on_row_inserted(&__block : RowInsertedSignal)
      __callback = ->(_arg0 : LibGtk::TreeModel*, _arg1 : LibGtk::LibGtk::TreePath*, _arg2 : LibGtk::LibGtk::TreeIter*) {
       __return_value = __block.call(TreeModel.new(_arg0), Gtk::TreePath.new(_arg1), Gtk::TreeIter.new(_arg2))
       __return_value
      }
      connect("row-inserted", __callback)
    end

  end
end

