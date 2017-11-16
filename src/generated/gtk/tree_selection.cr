module Gtk
  class TreeSelection < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGtk::TreeSelection*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::TreeSelection*)
    end

    def mode
      __return_value = LibGtk.tree_selection_get_mode(to_unsafe.as(LibGtk::TreeSelection*))
      __return_value
    end

    def count_selected_rows
      __return_value = LibGtk.tree_selection_count_selected_rows(@pointer.as(LibGtk::TreeSelection*))
      __return_value
    end

    def mode
      __return_value = LibGtk.tree_selection_get_mode(@pointer.as(LibGtk::TreeSelection*))
      __return_value
    end

    def selected(model, iter)
      __return_value = LibGtk.tree_selection_get_selected(@pointer.as(LibGtk::TreeSelection*), model, iter)
      __return_value
    end

    def selected_rows(model)
      __return_value = LibGtk.tree_selection_get_selected_rows(@pointer.as(LibGtk::TreeSelection*), model)
      GLib::ListIterator(Gtk::TreePath, LibGtk::TreePath*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def tree_view
      __return_value = LibGtk.tree_selection_get_tree_view(@pointer.as(LibGtk::TreeSelection*))
      Gtk::TreeView.new(__return_value)
    end

    def iter_is_selected(iter)
      __return_value = LibGtk.tree_selection_iter_is_selected(@pointer.as(LibGtk::TreeSelection*), iter.to_unsafe.as(LibGtk::TreeIter*))
      __return_value
    end

    def path_is_selected(path)
      __return_value = LibGtk.tree_selection_path_is_selected(@pointer.as(LibGtk::TreeSelection*), path.to_unsafe.as(LibGtk::TreePath*))
      __return_value
    end

    def select_all
      LibGtk.tree_selection_select_all(@pointer.as(LibGtk::TreeSelection*))
      nil
    end

    def select_iter(iter)
      LibGtk.tree_selection_select_iter(@pointer.as(LibGtk::TreeSelection*), iter.to_unsafe.as(LibGtk::TreeIter*))
      nil
    end

    def select_path(path)
      LibGtk.tree_selection_select_path(@pointer.as(LibGtk::TreeSelection*), path.to_unsafe.as(LibGtk::TreePath*))
      nil
    end

    def select_range(start_path, end_path)
      LibGtk.tree_selection_select_range(@pointer.as(LibGtk::TreeSelection*), start_path.to_unsafe.as(LibGtk::TreePath*), end_path.to_unsafe.as(LibGtk::TreePath*))
      nil
    end

    def selected_foreach(func, data)
      LibGtk.tree_selection_selected_foreach(@pointer.as(LibGtk::TreeSelection*), func, data ? data : nil)
      nil
    end

    def mode=(type : Gtk::SelectionMode)
      LibGtk.tree_selection_set_mode(@pointer.as(LibGtk::TreeSelection*), type)
      nil
    end

    def set_select_function(func, data, destroy)
      LibGtk.tree_selection_set_select_function(@pointer.as(LibGtk::TreeSelection*), func, data ? data : nil, destroy)
      nil
    end

    def unselect_all
      LibGtk.tree_selection_unselect_all(@pointer.as(LibGtk::TreeSelection*))
      nil
    end

    def unselect_iter(iter)
      LibGtk.tree_selection_unselect_iter(@pointer.as(LibGtk::TreeSelection*), iter.to_unsafe.as(LibGtk::TreeIter*))
      nil
    end

    def unselect_path(path)
      LibGtk.tree_selection_unselect_path(@pointer.as(LibGtk::TreeSelection*), path.to_unsafe.as(LibGtk::TreePath*))
      nil
    end

    def unselect_range(start_path, end_path)
      LibGtk.tree_selection_unselect_range(@pointer.as(LibGtk::TreeSelection*), start_path.to_unsafe.as(LibGtk::TreePath*), end_path.to_unsafe.as(LibGtk::TreePath*))
      nil
    end

    alias ChangedSignal = TreeSelection ->
    def on_changed(&__block : ChangedSignal)
      __callback = ->(_arg0 : LibGtk::TreeSelection*) {
       __return_value = __block.call(TreeSelection.new(_arg0))
       __return_value
      }
      connect("changed", __callback)
    end

  end
end

