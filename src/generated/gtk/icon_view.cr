require "./container"

module Gtk
  class IconView < Container
    def initialize(@gtk_icon_view)
    end

    def to_unsafe
      @gtk_icon_view.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements CellLayout
    # Implements Scrollable

















    def self.new_internal
      __return_value = LibGtk.icon_view_new
      Gtk::Widget.new(__return_value)
    end

    def self.new_with_area(area)
      __return_value = LibGtk.icon_view_new_with_area((area.to_unsafe as LibGtk::CellArea*))
      Gtk::Widget.new(__return_value)
    end

    def self.new_with_model(model)
      __return_value = LibGtk.icon_view_new_with_model((model.to_unsafe as LibGtk::TreeModel*))
      Gtk::Widget.new(__return_value)
    end

    def convert_widget_to_bin_window_coords(wx, wy, bx, by)
      __return_value = LibGtk.icon_view_convert_widget_to_bin_window_coords((to_unsafe as LibGtk::IconView*), Int32.new(wx), Int32.new(wy), Int32.new(bx), Int32.new(by))
      __return_value
    end

    def create_drag_icon(path)
      __return_value = LibGtk.icon_view_create_drag_icon((to_unsafe as LibGtk::IconView*), (path.to_unsafe as LibGtk::TreePath*))
      Cairo::Surface.new(__return_value)
    end

    def enable_model_drag_dest(targets, n_targets, actions)
      __return_value = LibGtk.icon_view_enable_model_drag_dest((to_unsafe as LibGtk::IconView*), targets, Int32.new(n_targets), actions)
      __return_value
    end

    def enable_model_drag_source(start_button_mask, targets, n_targets, actions)
      __return_value = LibGtk.icon_view_enable_model_drag_source((to_unsafe as LibGtk::IconView*), start_button_mask, targets, Int32.new(n_targets), actions)
      __return_value
    end

    def activate_on_single_click
      __return_value = LibGtk.icon_view_get_activate_on_single_click((to_unsafe as LibGtk::IconView*))
      __return_value
    end

    def cell_rect(path, cell, rect)
      __return_value = LibGtk.icon_view_get_cell_rect((to_unsafe as LibGtk::IconView*), (path.to_unsafe as LibGtk::TreePath*), cell && (cell.to_unsafe as LibGtk::CellRenderer*), rect)
      __return_value
    end

    def column_spacing
      __return_value = LibGtk.icon_view_get_column_spacing((to_unsafe as LibGtk::IconView*))
      __return_value
    end

    def columns
      __return_value = LibGtk.icon_view_get_columns((to_unsafe as LibGtk::IconView*))
      __return_value
    end

    def cursor(path, cell)
      __return_value = LibGtk.icon_view_get_cursor((to_unsafe as LibGtk::IconView*), (path.to_unsafe as LibGtk::TreePath*), (cell.to_unsafe as LibGtk::CellRenderer*))
      __return_value
    end

    def dest_item_at_pos(drag_x, drag_y, path, pos)
      __return_value = LibGtk.icon_view_get_dest_item_at_pos((to_unsafe as LibGtk::IconView*), Int32.new(drag_x), Int32.new(drag_y), (path.to_unsafe as LibGtk::TreePath*), pos)
      __return_value
    end

    def drag_dest_item(path, pos)
      __return_value = LibGtk.icon_view_get_drag_dest_item((to_unsafe as LibGtk::IconView*), (path.to_unsafe as LibGtk::TreePath*), pos)
      __return_value
    end

    def item_at_pos(x, y, path, cell)
      __return_value = LibGtk.icon_view_get_item_at_pos((to_unsafe as LibGtk::IconView*), Int32.new(x), Int32.new(y), (path.to_unsafe as LibGtk::TreePath*), (cell.to_unsafe as LibGtk::CellRenderer*))
      __return_value
    end

    def item_column(path)
      __return_value = LibGtk.icon_view_get_item_column((to_unsafe as LibGtk::IconView*), (path.to_unsafe as LibGtk::TreePath*))
      __return_value
    end

    def item_orientation
      __return_value = LibGtk.icon_view_get_item_orientation((to_unsafe as LibGtk::IconView*))
      __return_value
    end

    def item_padding
      __return_value = LibGtk.icon_view_get_item_padding((to_unsafe as LibGtk::IconView*))
      __return_value
    end

    def item_row(path)
      __return_value = LibGtk.icon_view_get_item_row((to_unsafe as LibGtk::IconView*), (path.to_unsafe as LibGtk::TreePath*))
      __return_value
    end

    def item_width
      __return_value = LibGtk.icon_view_get_item_width((to_unsafe as LibGtk::IconView*))
      __return_value
    end

    def margin
      __return_value = LibGtk.icon_view_get_margin((to_unsafe as LibGtk::IconView*))
      __return_value
    end

    def markup_column
      __return_value = LibGtk.icon_view_get_markup_column((to_unsafe as LibGtk::IconView*))
      __return_value
    end

    def model
      __return_value = LibGtk.icon_view_get_model((to_unsafe as LibGtk::IconView*))
      __return_value
    end

    def path_at_pos(x, y)
      __return_value = LibGtk.icon_view_get_path_at_pos((to_unsafe as LibGtk::IconView*), Int32.new(x), Int32.new(y))
      Gtk::TreePath.new(__return_value)
    end

    def pixbuf_column
      __return_value = LibGtk.icon_view_get_pixbuf_column((to_unsafe as LibGtk::IconView*))
      __return_value
    end

    def reorderable
      __return_value = LibGtk.icon_view_get_reorderable((to_unsafe as LibGtk::IconView*))
      __return_value
    end

    def row_spacing
      __return_value = LibGtk.icon_view_get_row_spacing((to_unsafe as LibGtk::IconView*))
      __return_value
    end

    def selected_items
      __return_value = LibGtk.icon_view_get_selected_items((to_unsafe as LibGtk::IconView*))
      __return_value
    end

    def selection_mode
      __return_value = LibGtk.icon_view_get_selection_mode((to_unsafe as LibGtk::IconView*))
      __return_value
    end

    def spacing
      __return_value = LibGtk.icon_view_get_spacing((to_unsafe as LibGtk::IconView*))
      __return_value
    end

    def text_column
      __return_value = LibGtk.icon_view_get_text_column((to_unsafe as LibGtk::IconView*))
      __return_value
    end

    def tooltip_column
      __return_value = LibGtk.icon_view_get_tooltip_column((to_unsafe as LibGtk::IconView*))
      __return_value
    end

    def tooltip_context(x, y, keyboard_tip, model, path, iter)
      __return_value = LibGtk.icon_view_get_tooltip_context((to_unsafe as LibGtk::IconView*), Int32.new(x), Int32.new(y), keyboard_tip, (model.to_unsafe as LibGtk::TreeModel*), (path.to_unsafe as LibGtk::TreePath*), iter)
      __return_value
    end

    def visible_range(start_path, end_path)
      __return_value = LibGtk.icon_view_get_visible_range((to_unsafe as LibGtk::IconView*), (start_path.to_unsafe as LibGtk::TreePath*), (end_path.to_unsafe as LibGtk::TreePath*))
      __return_value
    end

    def item_activated(path)
      __return_value = LibGtk.icon_view_item_activated((to_unsafe as LibGtk::IconView*), (path.to_unsafe as LibGtk::TreePath*))
      __return_value
    end

    def path_is_selected(path)
      __return_value = LibGtk.icon_view_path_is_selected((to_unsafe as LibGtk::IconView*), (path.to_unsafe as LibGtk::TreePath*))
      __return_value
    end

    def scroll_to_path(path, use_align, row_align, col_align)
      __return_value = LibGtk.icon_view_scroll_to_path((to_unsafe as LibGtk::IconView*), (path.to_unsafe as LibGtk::TreePath*), use_align, Float32.new(row_align), Float32.new(col_align))
      __return_value
    end

    def select_all
      __return_value = LibGtk.icon_view_select_all((to_unsafe as LibGtk::IconView*))
      __return_value
    end

    def select_path(path)
      __return_value = LibGtk.icon_view_select_path((to_unsafe as LibGtk::IconView*), (path.to_unsafe as LibGtk::TreePath*))
      __return_value
    end

    def selected_foreach(func : LibGtk::IconViewForeachFunc, data)
      __return_value = LibGtk.icon_view_selected_foreach((to_unsafe as LibGtk::IconView*), func, data)
      __return_value
    end

    def activate_on_single_click=(single)
      __return_value = LibGtk.icon_view_set_activate_on_single_click((to_unsafe as LibGtk::IconView*), single)
      __return_value
    end

    def column_spacing=(column_spacing)
      __return_value = LibGtk.icon_view_set_column_spacing((to_unsafe as LibGtk::IconView*), Int32.new(column_spacing))
      __return_value
    end

    def columns=(columns)
      __return_value = LibGtk.icon_view_set_columns((to_unsafe as LibGtk::IconView*), Int32.new(columns))
      __return_value
    end

    def set_cursor(path, cell, start_editing)
      __return_value = LibGtk.icon_view_set_cursor((to_unsafe as LibGtk::IconView*), (path.to_unsafe as LibGtk::TreePath*), cell && (cell.to_unsafe as LibGtk::CellRenderer*), start_editing)
      __return_value
    end

    def set_drag_dest_item(path, pos)
      __return_value = LibGtk.icon_view_set_drag_dest_item((to_unsafe as LibGtk::IconView*), path && (path.to_unsafe as LibGtk::TreePath*), pos)
      __return_value
    end

    def item_orientation=(orientation)
      __return_value = LibGtk.icon_view_set_item_orientation((to_unsafe as LibGtk::IconView*), orientation)
      __return_value
    end

    def item_padding=(item_padding)
      __return_value = LibGtk.icon_view_set_item_padding((to_unsafe as LibGtk::IconView*), Int32.new(item_padding))
      __return_value
    end

    def item_width=(item_width)
      __return_value = LibGtk.icon_view_set_item_width((to_unsafe as LibGtk::IconView*), Int32.new(item_width))
      __return_value
    end

    def margin=(margin)
      __return_value = LibGtk.icon_view_set_margin((to_unsafe as LibGtk::IconView*), Int32.new(margin))
      __return_value
    end

    def markup_column=(column)
      __return_value = LibGtk.icon_view_set_markup_column((to_unsafe as LibGtk::IconView*), Int32.new(column))
      __return_value
    end

    def model=(model)
      __return_value = LibGtk.icon_view_set_model((to_unsafe as LibGtk::IconView*), model && (model.to_unsafe as LibGtk::TreeModel*))
      __return_value
    end

    def pixbuf_column=(column)
      __return_value = LibGtk.icon_view_set_pixbuf_column((to_unsafe as LibGtk::IconView*), Int32.new(column))
      __return_value
    end

    def reorderable=(reorderable)
      __return_value = LibGtk.icon_view_set_reorderable((to_unsafe as LibGtk::IconView*), reorderable)
      __return_value
    end

    def row_spacing=(row_spacing)
      __return_value = LibGtk.icon_view_set_row_spacing((to_unsafe as LibGtk::IconView*), Int32.new(row_spacing))
      __return_value
    end

    def selection_mode=(mode)
      __return_value = LibGtk.icon_view_set_selection_mode((to_unsafe as LibGtk::IconView*), mode)
      __return_value
    end

    def spacing=(spacing)
      __return_value = LibGtk.icon_view_set_spacing((to_unsafe as LibGtk::IconView*), Int32.new(spacing))
      __return_value
    end

    def text_column=(column)
      __return_value = LibGtk.icon_view_set_text_column((to_unsafe as LibGtk::IconView*), Int32.new(column))
      __return_value
    end

    def set_tooltip_cell(tooltip, path, cell)
      __return_value = LibGtk.icon_view_set_tooltip_cell((to_unsafe as LibGtk::IconView*), (tooltip.to_unsafe as LibGtk::Tooltip*), (path.to_unsafe as LibGtk::TreePath*), cell && (cell.to_unsafe as LibGtk::CellRenderer*))
      __return_value
    end

    def tooltip_column=(column)
      __return_value = LibGtk.icon_view_set_tooltip_column((to_unsafe as LibGtk::IconView*), Int32.new(column))
      __return_value
    end

    def set_tooltip_item(tooltip, path)
      __return_value = LibGtk.icon_view_set_tooltip_item((to_unsafe as LibGtk::IconView*), (tooltip.to_unsafe as LibGtk::Tooltip*), (path.to_unsafe as LibGtk::TreePath*))
      __return_value
    end

    def unselect_all
      __return_value = LibGtk.icon_view_unselect_all((to_unsafe as LibGtk::IconView*))
      __return_value
    end

    def unselect_path(path)
      __return_value = LibGtk.icon_view_unselect_path((to_unsafe as LibGtk::IconView*), (path.to_unsafe as LibGtk::TreePath*))
      __return_value
    end

    def unset_model_drag_dest
      __return_value = LibGtk.icon_view_unset_model_drag_dest((to_unsafe as LibGtk::IconView*))
      __return_value
    end

    def unset_model_drag_source
      __return_value = LibGtk.icon_view_unset_model_drag_source((to_unsafe as LibGtk::IconView*))
      __return_value
    end

    alias ActivateCursorItemSignal = IconView -> Bool
    def on_activate_cursor_item(&__block : ActivateCursorItemSignal)
      __callback = ->(_arg0 : LibGtk::IconView*) {
       __return_value = __block.call(IconView.new(_arg0))
       __return_value
      }
      connect("activate-cursor-item", __callback)
    end

    alias ItemActivatedSignal = IconView, Gtk::TreePath -> 
    def on_item_activated(&__block : ItemActivatedSignal)
      __callback = ->(_arg0 : LibGtk::IconView*, _arg1 : LibGtk::LibGtk::TreePath*) {
       __return_value = __block.call(IconView.new(_arg0), Gtk::TreePath.new(_arg1))
       __return_value
      }
      connect("item-activated", __callback)
    end

    alias MoveCursorSignal = IconView, Gtk::MovementStep, Int32 -> Bool
    def on_move_cursor(&__block : MoveCursorSignal)
      __callback = ->(_arg0 : LibGtk::IconView*, _arg1 : LibGtk::LibGtk::MovementStep*, _arg2 : LibGtk::Int32*) {
       __return_value = __block.call(IconView.new(_arg0), _arg1, _arg2)
       __return_value
      }
      connect("move-cursor", __callback)
    end

    alias SelectAllSignal = IconView -> 
    def on_select_all(&__block : SelectAllSignal)
      __callback = ->(_arg0 : LibGtk::IconView*) {
       __return_value = __block.call(IconView.new(_arg0))
       __return_value
      }
      connect("select-all", __callback)
    end

    alias SelectCursorItemSignal = IconView -> 
    def on_select_cursor_item(&__block : SelectCursorItemSignal)
      __callback = ->(_arg0 : LibGtk::IconView*) {
       __return_value = __block.call(IconView.new(_arg0))
       __return_value
      }
      connect("select-cursor-item", __callback)
    end

    alias SelectionChangedSignal = IconView -> 
    def on_selection_changed(&__block : SelectionChangedSignal)
      __callback = ->(_arg0 : LibGtk::IconView*) {
       __return_value = __block.call(IconView.new(_arg0))
       __return_value
      }
      connect("selection-changed", __callback)
    end

    alias ToggleCursorItemSignal = IconView -> 
    def on_toggle_cursor_item(&__block : ToggleCursorItemSignal)
      __callback = ->(_arg0 : LibGtk::IconView*) {
       __return_value = __block.call(IconView.new(_arg0))
       __return_value
      }
      connect("toggle-cursor-item", __callback)
    end

    alias UnselectAllSignal = IconView -> 
    def on_unselect_all(&__block : UnselectAllSignal)
      __callback = ->(_arg0 : LibGtk::IconView*) {
       __return_value = __block.call(IconView.new(_arg0))
       __return_value
      }
      connect("unselect-all", __callback)
    end

  end
end

