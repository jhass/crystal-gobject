require "./container"

module Gtk
  class ListBox < Container
    @gtk_list_box : LibGtk::ListBox*?
    def initialize(@gtk_list_box : LibGtk::ListBox*)
    end

    def to_unsafe
      @gtk_list_box.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable


    def self.new : self
      __return_value = LibGtk.list_box_new
      cast Gtk::Widget.new(__return_value)
    end

    def bind_model(model, create_widget_func, user_data, user_data_free_func)
      __return_value = LibGtk.list_box_bind_model(to_unsafe.as(LibGtk::ListBox*), model ? model.to_unsafe.as(LibGio::ListModel*) : nil, create_widget_func ? create_widget_func : nil, user_data ? user_data : nil, user_data_free_func)
      __return_value
    end

    def drag_highlight_row(row)
      __return_value = LibGtk.list_box_drag_highlight_row(to_unsafe.as(LibGtk::ListBox*), row.to_unsafe.as(LibGtk::ListBoxRow*))
      __return_value
    end

    def drag_unhighlight_row
      __return_value = LibGtk.list_box_drag_unhighlight_row(to_unsafe.as(LibGtk::ListBox*))
      __return_value
    end

    def activate_on_single_click
      __return_value = LibGtk.list_box_get_activate_on_single_click(to_unsafe.as(LibGtk::ListBox*))
      __return_value
    end

    def adjustment
      __return_value = LibGtk.list_box_get_adjustment(to_unsafe.as(LibGtk::ListBox*))
      Gtk::Adjustment.new(__return_value)
    end

    def row_at_index(index)
      __return_value = LibGtk.list_box_get_row_at_index(to_unsafe.as(LibGtk::ListBox*), Int32.new(index))
      Gtk::ListBoxRow.new(__return_value) if __return_value
    end

    def row_at_y(y)
      __return_value = LibGtk.list_box_get_row_at_y(to_unsafe.as(LibGtk::ListBox*), Int32.new(y))
      Gtk::ListBoxRow.new(__return_value) if __return_value
    end

    def selected_row
      __return_value = LibGtk.list_box_get_selected_row(to_unsafe.as(LibGtk::ListBox*))
      Gtk::ListBoxRow.new(__return_value)
    end

    def selected_rows
      __return_value = LibGtk.list_box_get_selected_rows(to_unsafe.as(LibGtk::ListBox*))
      GLib::ListIterator(Gtk::ListBoxRow, LibGtk::ListBoxRow*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def selection_mode
      __return_value = LibGtk.list_box_get_selection_mode(to_unsafe.as(LibGtk::ListBox*))
      __return_value
    end

    def insert(child, position)
      __return_value = LibGtk.list_box_insert(to_unsafe.as(LibGtk::ListBox*), child.to_unsafe.as(LibGtk::Widget*), Int32.new(position))
      __return_value
    end

    def invalidate_filter
      __return_value = LibGtk.list_box_invalidate_filter(to_unsafe.as(LibGtk::ListBox*))
      __return_value
    end

    def invalidate_headers
      __return_value = LibGtk.list_box_invalidate_headers(to_unsafe.as(LibGtk::ListBox*))
      __return_value
    end

    def invalidate_sort
      __return_value = LibGtk.list_box_invalidate_sort(to_unsafe.as(LibGtk::ListBox*))
      __return_value
    end

    def prepend(child)
      __return_value = LibGtk.list_box_prepend(to_unsafe.as(LibGtk::ListBox*), child.to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def select_all
      __return_value = LibGtk.list_box_select_all(to_unsafe.as(LibGtk::ListBox*))
      __return_value
    end

    def select_row(row)
      __return_value = LibGtk.list_box_select_row(to_unsafe.as(LibGtk::ListBox*), row ? row.to_unsafe.as(LibGtk::ListBoxRow*) : nil)
      __return_value
    end

    def selected_foreach(func, data)
      __return_value = LibGtk.list_box_selected_foreach(to_unsafe.as(LibGtk::ListBox*), func, data ? data : nil)
      __return_value
    end

    def activate_on_single_click=(single)
      __return_value = LibGtk.list_box_set_activate_on_single_click(to_unsafe.as(LibGtk::ListBox*), single)
      __return_value
    end

    def adjustment=(adjustment)
      __return_value = LibGtk.list_box_set_adjustment(to_unsafe.as(LibGtk::ListBox*), adjustment ? adjustment.to_unsafe.as(LibGtk::Adjustment*) : nil)
      __return_value
    end

    def set_filter_func(filter_func, user_data, destroy)
      __return_value = LibGtk.list_box_set_filter_func(to_unsafe.as(LibGtk::ListBox*), filter_func ? filter_func : nil, user_data ? user_data : nil, destroy)
      __return_value
    end

    def set_header_func(update_header, user_data, destroy)
      __return_value = LibGtk.list_box_set_header_func(to_unsafe.as(LibGtk::ListBox*), update_header ? update_header : nil, user_data ? user_data : nil, destroy)
      __return_value
    end

    def placeholder=(placeholder)
      __return_value = LibGtk.list_box_set_placeholder(to_unsafe.as(LibGtk::ListBox*), placeholder ? placeholder.to_unsafe.as(LibGtk::Widget*) : nil)
      __return_value
    end

    def selection_mode=(mode : Gtk::SelectionMode)
      __return_value = LibGtk.list_box_set_selection_mode(to_unsafe.as(LibGtk::ListBox*), mode)
      __return_value
    end

    def set_sort_func(sort_func, user_data, destroy)
      __return_value = LibGtk.list_box_set_sort_func(to_unsafe.as(LibGtk::ListBox*), sort_func ? sort_func : nil, user_data ? user_data : nil, destroy)
      __return_value
    end

    def unselect_all
      __return_value = LibGtk.list_box_unselect_all(to_unsafe.as(LibGtk::ListBox*))
      __return_value
    end

    def unselect_row(row)
      __return_value = LibGtk.list_box_unselect_row(to_unsafe.as(LibGtk::ListBox*), row.to_unsafe.as(LibGtk::ListBoxRow*))
      __return_value
    end

    alias ActivateCursorRowSignal = ListBox ->
    def on_activate_cursor_row(&__block : ActivateCursorRowSignal)
      __callback = ->(_arg0 : LibGtk::ListBox*) {
       __return_value = __block.call(ListBox.new(_arg0))
       __return_value
      }
      connect("activate-cursor-row", __callback)
    end

    alias MoveCursorSignal = ListBox, Gtk::MovementStep, Int32 ->
    def on_move_cursor(&__block : MoveCursorSignal)
      __callback = ->(_arg0 : LibGtk::ListBox*, _arg1 : LibGtk::LibGtk::MovementStep*, _arg2 : LibGtk::Int32*) {
       __return_value = __block.call(ListBox.new(_arg0), _arg1, _arg2)
       __return_value
      }
      connect("move-cursor", __callback)
    end

    alias RowActivatedSignal = ListBox, Gtk::ListBoxRow ->
    def on_row_activated(&__block : RowActivatedSignal)
      __callback = ->(_arg0 : LibGtk::ListBox*, _arg1 : LibGtk::LibGtk::ListBoxRow*) {
       __return_value = __block.call(ListBox.new(_arg0), Gtk::ListBoxRow.new(_arg1))
       __return_value
      }
      connect("row-activated", __callback)
    end

    alias RowSelectedSignal = ListBox, Gtk::ListBoxRow ->
    def on_row_selected(&__block : RowSelectedSignal)
      __callback = ->(_arg0 : LibGtk::ListBox*, _arg1 : LibGtk::LibGtk::ListBoxRow*) {
       __return_value = __block.call(ListBox.new(_arg0), Gtk::ListBoxRow.new(_arg1))
       __return_value
      }
      connect("row-selected", __callback)
    end

    alias SelectAllSignal = ListBox ->
    def on_select_all(&__block : SelectAllSignal)
      __callback = ->(_arg0 : LibGtk::ListBox*) {
       __return_value = __block.call(ListBox.new(_arg0))
       __return_value
      }
      connect("select-all", __callback)
    end

    alias SelectedRowsChangedSignal = ListBox ->
    def on_selected_rows_changed(&__block : SelectedRowsChangedSignal)
      __callback = ->(_arg0 : LibGtk::ListBox*) {
       __return_value = __block.call(ListBox.new(_arg0))
       __return_value
      }
      connect("selected-rows-changed", __callback)
    end

    alias ToggleCursorRowSignal = ListBox ->
    def on_toggle_cursor_row(&__block : ToggleCursorRowSignal)
      __callback = ->(_arg0 : LibGtk::ListBox*) {
       __return_value = __block.call(ListBox.new(_arg0))
       __return_value
      }
      connect("toggle-cursor-row", __callback)
    end

    alias UnselectAllSignal = ListBox ->
    def on_unselect_all(&__block : UnselectAllSignal)
      __callback = ->(_arg0 : LibGtk::ListBox*) {
       __return_value = __block.call(ListBox.new(_arg0))
       __return_value
      }
      connect("unselect-all", __callback)
    end

  end
end

