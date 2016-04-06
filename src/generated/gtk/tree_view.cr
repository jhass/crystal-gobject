require "./container"

module Gtk
  class TreeView < Container
    def initialize(@gtk_tree_view)
    end

    def to_unsafe
      @gtk_tree_view.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Scrollable


















    def self.new_internal
      __return_value = LibGtk.tree_view_new
      Gtk::Widget.new(__return_value)
    end

    def self.new_with_model(model)
      __return_value = LibGtk.tree_view_new_with_model((model.to_unsafe as LibGtk::TreeModel*))
      Gtk::Widget.new(__return_value)
    end

    def append_column(column)
      __return_value = LibGtk.tree_view_append_column((to_unsafe as LibGtk::TreeView*), (column.to_unsafe as LibGtk::TreeViewColumn*))
      __return_value
    end

    def collapse_all
      __return_value = LibGtk.tree_view_collapse_all((to_unsafe as LibGtk::TreeView*))
      __return_value
    end

    def collapse_row(path)
      __return_value = LibGtk.tree_view_collapse_row((to_unsafe as LibGtk::TreeView*), (path.to_unsafe as LibGtk::TreePath*))
      __return_value
    end

    def columns_autosize
      __return_value = LibGtk.tree_view_columns_autosize((to_unsafe as LibGtk::TreeView*))
      __return_value
    end

    def convert_bin_window_to_tree_coords(bx, by, tx, ty)
      __return_value = LibGtk.tree_view_convert_bin_window_to_tree_coords((to_unsafe as LibGtk::TreeView*), Int32.new(bx), Int32.new(by), Int32.new(tx), Int32.new(ty))
      __return_value
    end

    def convert_bin_window_to_widget_coords(bx, by, wx, wy)
      __return_value = LibGtk.tree_view_convert_bin_window_to_widget_coords((to_unsafe as LibGtk::TreeView*), Int32.new(bx), Int32.new(by), Int32.new(wx), Int32.new(wy))
      __return_value
    end

    def convert_tree_to_bin_window_coords(tx, ty, bx, by)
      __return_value = LibGtk.tree_view_convert_tree_to_bin_window_coords((to_unsafe as LibGtk::TreeView*), Int32.new(tx), Int32.new(ty), Int32.new(bx), Int32.new(by))
      __return_value
    end

    def convert_tree_to_widget_coords(tx, ty, wx, wy)
      __return_value = LibGtk.tree_view_convert_tree_to_widget_coords((to_unsafe as LibGtk::TreeView*), Int32.new(tx), Int32.new(ty), Int32.new(wx), Int32.new(wy))
      __return_value
    end

    def convert_widget_to_bin_window_coords(wx, wy, bx, by)
      __return_value = LibGtk.tree_view_convert_widget_to_bin_window_coords((to_unsafe as LibGtk::TreeView*), Int32.new(wx), Int32.new(wy), Int32.new(bx), Int32.new(by))
      __return_value
    end

    def convert_widget_to_tree_coords(wx, wy, tx, ty)
      __return_value = LibGtk.tree_view_convert_widget_to_tree_coords((to_unsafe as LibGtk::TreeView*), Int32.new(wx), Int32.new(wy), Int32.new(tx), Int32.new(ty))
      __return_value
    end

    def create_row_drag_icon(path)
      __return_value = LibGtk.tree_view_create_row_drag_icon((to_unsafe as LibGtk::TreeView*), (path.to_unsafe as LibGtk::TreePath*))
      Cairo::Surface.new(__return_value)
    end

    def enable_model_drag_dest(targets, n_targets, actions)
      __return_value = LibGtk.tree_view_enable_model_drag_dest((to_unsafe as LibGtk::TreeView*), targets, Int32.new(n_targets), actions)
      __return_value
    end

    def enable_model_drag_source(start_button_mask, targets, n_targets, actions)
      __return_value = LibGtk.tree_view_enable_model_drag_source((to_unsafe as LibGtk::TreeView*), start_button_mask, targets, Int32.new(n_targets), actions)
      __return_value
    end

    def expand_all
      __return_value = LibGtk.tree_view_expand_all((to_unsafe as LibGtk::TreeView*))
      __return_value
    end

    def expand_row(path, open_all)
      __return_value = LibGtk.tree_view_expand_row((to_unsafe as LibGtk::TreeView*), (path.to_unsafe as LibGtk::TreePath*), open_all)
      __return_value
    end

    def expand_to_path(path)
      __return_value = LibGtk.tree_view_expand_to_path((to_unsafe as LibGtk::TreeView*), (path.to_unsafe as LibGtk::TreePath*))
      __return_value
    end

    def activate_on_single_click
      __return_value = LibGtk.tree_view_get_activate_on_single_click((to_unsafe as LibGtk::TreeView*))
      __return_value
    end

    def background_area(path, column, rect)
      __return_value = LibGtk.tree_view_get_background_area((to_unsafe as LibGtk::TreeView*), path && (path.to_unsafe as LibGtk::TreePath*), column && (column.to_unsafe as LibGtk::TreeViewColumn*), rect)
      __return_value
    end

    def bin_window
      __return_value = LibGtk.tree_view_get_bin_window((to_unsafe as LibGtk::TreeView*))
      Gdk::Window.new(__return_value)
    end

    def cell_area(path, column, rect)
      __return_value = LibGtk.tree_view_get_cell_area((to_unsafe as LibGtk::TreeView*), path && (path.to_unsafe as LibGtk::TreePath*), column && (column.to_unsafe as LibGtk::TreeViewColumn*), rect)
      __return_value
    end

    def column(n)
      __return_value = LibGtk.tree_view_get_column((to_unsafe as LibGtk::TreeView*), Int32.new(n))
      Gtk::TreeViewColumn.new(__return_value)
    end

    def columns
      __return_value = LibGtk.tree_view_get_columns((to_unsafe as LibGtk::TreeView*))
      __return_value
    end

    def cursor(path, focus_column)
      __return_value = LibGtk.tree_view_get_cursor((to_unsafe as LibGtk::TreeView*), path && (path.to_unsafe as LibGtk::TreePath*), focus_column && (focus_column.to_unsafe as LibGtk::TreeViewColumn*))
      __return_value
    end

    def dest_row_at_pos(drag_x, drag_y, path, pos)
      __return_value = LibGtk.tree_view_get_dest_row_at_pos((to_unsafe as LibGtk::TreeView*), Int32.new(drag_x), Int32.new(drag_y), path && (path.to_unsafe as LibGtk::TreePath*), pos)
      __return_value
    end

    def drag_dest_row(path, pos)
      __return_value = LibGtk.tree_view_get_drag_dest_row((to_unsafe as LibGtk::TreeView*), path && (path.to_unsafe as LibGtk::TreePath*), pos)
      __return_value
    end

    def enable_search
      __return_value = LibGtk.tree_view_get_enable_search((to_unsafe as LibGtk::TreeView*))
      __return_value
    end

    def enable_tree_lines
      __return_value = LibGtk.tree_view_get_enable_tree_lines((to_unsafe as LibGtk::TreeView*))
      __return_value
    end

    def expander_column
      __return_value = LibGtk.tree_view_get_expander_column((to_unsafe as LibGtk::TreeView*))
      Gtk::TreeViewColumn.new(__return_value)
    end

    def fixed_height_mode
      __return_value = LibGtk.tree_view_get_fixed_height_mode((to_unsafe as LibGtk::TreeView*))
      __return_value
    end

    def grid_lines
      __return_value = LibGtk.tree_view_get_grid_lines((to_unsafe as LibGtk::TreeView*))
      __return_value
    end

    def hadjustment
      __return_value = LibGtk.tree_view_get_hadjustment((to_unsafe as LibGtk::TreeView*))
      Gtk::Adjustment.new(__return_value)
    end

    def headers_clickable
      __return_value = LibGtk.tree_view_get_headers_clickable((to_unsafe as LibGtk::TreeView*))
      __return_value
    end

    def headers_visible
      __return_value = LibGtk.tree_view_get_headers_visible((to_unsafe as LibGtk::TreeView*))
      __return_value
    end

    def hover_expand
      __return_value = LibGtk.tree_view_get_hover_expand((to_unsafe as LibGtk::TreeView*))
      __return_value
    end

    def hover_selection
      __return_value = LibGtk.tree_view_get_hover_selection((to_unsafe as LibGtk::TreeView*))
      __return_value
    end

    def level_indentation
      __return_value = LibGtk.tree_view_get_level_indentation((to_unsafe as LibGtk::TreeView*))
      __return_value
    end

    def model
      __return_value = LibGtk.tree_view_get_model((to_unsafe as LibGtk::TreeView*))
      __return_value if __return_value
    end

    def n_columns
      __return_value = LibGtk.tree_view_get_n_columns((to_unsafe as LibGtk::TreeView*))
      __return_value
    end

    def path_at_pos(x, y, path, column, cell_x, cell_y)
      __return_value = LibGtk.tree_view_get_path_at_pos((to_unsafe as LibGtk::TreeView*), Int32.new(x), Int32.new(y), path && (path.to_unsafe as LibGtk::TreePath*), column && (column.to_unsafe as LibGtk::TreeViewColumn*), Int32.new(cell_x), Int32.new(cell_y))
      __return_value
    end

    def reorderable
      __return_value = LibGtk.tree_view_get_reorderable((to_unsafe as LibGtk::TreeView*))
      __return_value
    end

    def rubber_banding
      __return_value = LibGtk.tree_view_get_rubber_banding((to_unsafe as LibGtk::TreeView*))
      __return_value
    end

    def rules_hint
      __return_value = LibGtk.tree_view_get_rules_hint((to_unsafe as LibGtk::TreeView*))
      __return_value
    end

    def search_column
      __return_value = LibGtk.tree_view_get_search_column((to_unsafe as LibGtk::TreeView*))
      __return_value
    end

    def search_entry
      __return_value = LibGtk.tree_view_get_search_entry((to_unsafe as LibGtk::TreeView*))
      Gtk::Entry.new(__return_value)
    end

    def selection
      __return_value = LibGtk.tree_view_get_selection((to_unsafe as LibGtk::TreeView*))
      Gtk::TreeSelection.new(__return_value)
    end

    def show_expanders
      __return_value = LibGtk.tree_view_get_show_expanders((to_unsafe as LibGtk::TreeView*))
      __return_value
    end

    def tooltip_column
      __return_value = LibGtk.tree_view_get_tooltip_column((to_unsafe as LibGtk::TreeView*))
      __return_value
    end

    def tooltip_context(x, y, keyboard_tip, model, path, iter)
      __return_value = LibGtk.tree_view_get_tooltip_context((to_unsafe as LibGtk::TreeView*), Int32.new(x), Int32.new(y), keyboard_tip, model && (model.to_unsafe as LibGtk::TreeModel*), (path.to_unsafe as LibGtk::TreePath*), iter)
      __return_value
    end

    def vadjustment
      __return_value = LibGtk.tree_view_get_vadjustment((to_unsafe as LibGtk::TreeView*))
      Gtk::Adjustment.new(__return_value)
    end

    def visible_range(start_path, end_path)
      __return_value = LibGtk.tree_view_get_visible_range((to_unsafe as LibGtk::TreeView*), (start_path.to_unsafe as LibGtk::TreePath*), (end_path.to_unsafe as LibGtk::TreePath*))
      __return_value
    end

    def visible_rect(visible_rect)
      __return_value = LibGtk.tree_view_get_visible_rect((to_unsafe as LibGtk::TreeView*), visible_rect)
      __return_value
    end

    def insert_column(column, position)
      __return_value = LibGtk.tree_view_insert_column((to_unsafe as LibGtk::TreeView*), (column.to_unsafe as LibGtk::TreeViewColumn*), Int32.new(position))
      __return_value
    end

    def insert_column_with_data_func(position, title, cell, func : LibGtk::TreeCellDataFunc, data, dnotify : LibGLib::DestroyNotify)
      __return_value = LibGtk.tree_view_insert_column_with_data_func((to_unsafe as LibGtk::TreeView*), Int32.new(position), title, (cell.to_unsafe as LibGtk::CellRenderer*), func, data, dnotify)
      __return_value
    end

    def blank_at_pos?(x, y, path, column, cell_x, cell_y)
      __return_value = LibGtk.tree_view_is_blank_at_pos((to_unsafe as LibGtk::TreeView*), Int32.new(x), Int32.new(y), (path.to_unsafe as LibGtk::TreePath*), (column.to_unsafe as LibGtk::TreeViewColumn*), Int32.new(cell_x), Int32.new(cell_y))
      __return_value
    end

    def rubber_banding_active?
      __return_value = LibGtk.tree_view_is_rubber_banding_active((to_unsafe as LibGtk::TreeView*))
      __return_value
    end

    def map_expanded_rows(func : LibGtk::TreeViewMappingFunc, data)
      __return_value = LibGtk.tree_view_map_expanded_rows((to_unsafe as LibGtk::TreeView*), func, data)
      __return_value
    end

    def move_column_after(column, base_column)
      __return_value = LibGtk.tree_view_move_column_after((to_unsafe as LibGtk::TreeView*), (column.to_unsafe as LibGtk::TreeViewColumn*), base_column && (base_column.to_unsafe as LibGtk::TreeViewColumn*))
      __return_value
    end

    def remove_column(column)
      __return_value = LibGtk.tree_view_remove_column((to_unsafe as LibGtk::TreeView*), (column.to_unsafe as LibGtk::TreeViewColumn*))
      __return_value
    end

    def row_activated(path, column)
      __return_value = LibGtk.tree_view_row_activated((to_unsafe as LibGtk::TreeView*), (path.to_unsafe as LibGtk::TreePath*), (column.to_unsafe as LibGtk::TreeViewColumn*))
      __return_value
    end

    def row_expanded(path)
      __return_value = LibGtk.tree_view_row_expanded((to_unsafe as LibGtk::TreeView*), (path.to_unsafe as LibGtk::TreePath*))
      __return_value
    end

    def scroll_to_cell(path, column, use_align, row_align, col_align)
      __return_value = LibGtk.tree_view_scroll_to_cell((to_unsafe as LibGtk::TreeView*), path && (path.to_unsafe as LibGtk::TreePath*), column && (column.to_unsafe as LibGtk::TreeViewColumn*), use_align, Float32.new(row_align), Float32.new(col_align))
      __return_value
    end

    def scroll_to_point(tree_x, tree_y)
      __return_value = LibGtk.tree_view_scroll_to_point((to_unsafe as LibGtk::TreeView*), Int32.new(tree_x), Int32.new(tree_y))
      __return_value
    end

    def activate_on_single_click=(single)
      __return_value = LibGtk.tree_view_set_activate_on_single_click((to_unsafe as LibGtk::TreeView*), single)
      __return_value
    end

    def set_column_drag_function(func : LibGtk::TreeViewColumnDropFunc?, user_data, destroy : LibGLib::DestroyNotify?)
      __return_value = LibGtk.tree_view_set_column_drag_function((to_unsafe as LibGtk::TreeView*), func && func, user_data && user_data, destroy && destroy)
      __return_value
    end

    def set_cursor(path, focus_column, start_editing)
      __return_value = LibGtk.tree_view_set_cursor((to_unsafe as LibGtk::TreeView*), (path.to_unsafe as LibGtk::TreePath*), focus_column && (focus_column.to_unsafe as LibGtk::TreeViewColumn*), start_editing)
      __return_value
    end

    def set_cursor_on_cell(path, focus_column, focus_cell, start_editing)
      __return_value = LibGtk.tree_view_set_cursor_on_cell((to_unsafe as LibGtk::TreeView*), (path.to_unsafe as LibGtk::TreePath*), focus_column && (focus_column.to_unsafe as LibGtk::TreeViewColumn*), focus_cell && (focus_cell.to_unsafe as LibGtk::CellRenderer*), start_editing)
      __return_value
    end

    def set_destroy_count_func(func : LibGtk::TreeDestroyCountFunc?, data, destroy : LibGLib::DestroyNotify?)
      __return_value = LibGtk.tree_view_set_destroy_count_func((to_unsafe as LibGtk::TreeView*), func && func, data && data, destroy && destroy)
      __return_value
    end

    def set_drag_dest_row(path, pos)
      __return_value = LibGtk.tree_view_set_drag_dest_row((to_unsafe as LibGtk::TreeView*), path && (path.to_unsafe as LibGtk::TreePath*), pos)
      __return_value
    end

    def enable_search=(enable_search)
      __return_value = LibGtk.tree_view_set_enable_search((to_unsafe as LibGtk::TreeView*), enable_search)
      __return_value
    end

    def enable_tree_lines=(enabled)
      __return_value = LibGtk.tree_view_set_enable_tree_lines((to_unsafe as LibGtk::TreeView*), enabled)
      __return_value
    end

    def expander_column=(column)
      __return_value = LibGtk.tree_view_set_expander_column((to_unsafe as LibGtk::TreeView*), (column.to_unsafe as LibGtk::TreeViewColumn*))
      __return_value
    end

    def fixed_height_mode=(enable)
      __return_value = LibGtk.tree_view_set_fixed_height_mode((to_unsafe as LibGtk::TreeView*), enable)
      __return_value
    end

    def grid_lines=(grid_lines)
      __return_value = LibGtk.tree_view_set_grid_lines((to_unsafe as LibGtk::TreeView*), grid_lines)
      __return_value
    end

    def hadjustment=(adjustment)
      __return_value = LibGtk.tree_view_set_hadjustment((to_unsafe as LibGtk::TreeView*), adjustment && (adjustment.to_unsafe as LibGtk::Adjustment*))
      __return_value
    end

    def headers_clickable=(setting)
      __return_value = LibGtk.tree_view_set_headers_clickable((to_unsafe as LibGtk::TreeView*), setting)
      __return_value
    end

    def headers_visible=(headers_visible)
      __return_value = LibGtk.tree_view_set_headers_visible((to_unsafe as LibGtk::TreeView*), headers_visible)
      __return_value
    end

    def hover_expand=(expand)
      __return_value = LibGtk.tree_view_set_hover_expand((to_unsafe as LibGtk::TreeView*), expand)
      __return_value
    end

    def hover_selection=(hover)
      __return_value = LibGtk.tree_view_set_hover_selection((to_unsafe as LibGtk::TreeView*), hover)
      __return_value
    end

    def level_indentation=(indentation)
      __return_value = LibGtk.tree_view_set_level_indentation((to_unsafe as LibGtk::TreeView*), Int32.new(indentation))
      __return_value
    end

    def model=(model)
      __return_value = LibGtk.tree_view_set_model((to_unsafe as LibGtk::TreeView*), model && (model.to_unsafe as LibGtk::TreeModel*))
      __return_value
    end

    def reorderable=(reorderable)
      __return_value = LibGtk.tree_view_set_reorderable((to_unsafe as LibGtk::TreeView*), reorderable)
      __return_value
    end

    def set_row_separator_func(func : LibGtk::TreeViewRowSeparatorFunc?, data, destroy : LibGLib::DestroyNotify?)
      __return_value = LibGtk.tree_view_set_row_separator_func((to_unsafe as LibGtk::TreeView*), func && func, data && data, destroy && destroy)
      __return_value
    end

    def rubber_banding=(enable)
      __return_value = LibGtk.tree_view_set_rubber_banding((to_unsafe as LibGtk::TreeView*), enable)
      __return_value
    end

    def rules_hint=(setting)
      __return_value = LibGtk.tree_view_set_rules_hint((to_unsafe as LibGtk::TreeView*), setting)
      __return_value
    end

    def search_column=(column)
      __return_value = LibGtk.tree_view_set_search_column((to_unsafe as LibGtk::TreeView*), Int32.new(column))
      __return_value
    end

    def search_entry=(entry)
      __return_value = LibGtk.tree_view_set_search_entry((to_unsafe as LibGtk::TreeView*), entry && (entry.to_unsafe as LibGtk::Entry*))
      __return_value
    end

    def set_search_equal_func(search_equal_func : LibGtk::TreeViewSearchEqualFunc, search_user_data, search_destroy : LibGLib::DestroyNotify?)
      __return_value = LibGtk.tree_view_set_search_equal_func((to_unsafe as LibGtk::TreeView*), search_equal_func, search_user_data && search_user_data, search_destroy && search_destroy)
      __return_value
    end

    def set_search_position_func(func : LibGtk::TreeViewSearchPositionFunc?, data, destroy : LibGLib::DestroyNotify?)
      __return_value = LibGtk.tree_view_set_search_position_func((to_unsafe as LibGtk::TreeView*), func && func, data && data, destroy && destroy)
      __return_value
    end

    def show_expanders=(enabled)
      __return_value = LibGtk.tree_view_set_show_expanders((to_unsafe as LibGtk::TreeView*), enabled)
      __return_value
    end

    def set_tooltip_cell(tooltip, path, column, cell)
      __return_value = LibGtk.tree_view_set_tooltip_cell((to_unsafe as LibGtk::TreeView*), (tooltip.to_unsafe as LibGtk::Tooltip*), path && (path.to_unsafe as LibGtk::TreePath*), column && (column.to_unsafe as LibGtk::TreeViewColumn*), cell && (cell.to_unsafe as LibGtk::CellRenderer*))
      __return_value
    end

    def tooltip_column=(column)
      __return_value = LibGtk.tree_view_set_tooltip_column((to_unsafe as LibGtk::TreeView*), Int32.new(column))
      __return_value
    end

    def set_tooltip_row(tooltip, path)
      __return_value = LibGtk.tree_view_set_tooltip_row((to_unsafe as LibGtk::TreeView*), (tooltip.to_unsafe as LibGtk::Tooltip*), (path.to_unsafe as LibGtk::TreePath*))
      __return_value
    end

    def vadjustment=(adjustment)
      __return_value = LibGtk.tree_view_set_vadjustment((to_unsafe as LibGtk::TreeView*), adjustment && (adjustment.to_unsafe as LibGtk::Adjustment*))
      __return_value
    end

    def unset_rows_drag_dest
      __return_value = LibGtk.tree_view_unset_rows_drag_dest((to_unsafe as LibGtk::TreeView*))
      __return_value
    end

    def unset_rows_drag_source
      __return_value = LibGtk.tree_view_unset_rows_drag_source((to_unsafe as LibGtk::TreeView*))
      __return_value
    end

    alias ColumnsChangedSignal = TreeView -> 
    def on_columns_changed(&__block : ColumnsChangedSignal)
      __callback = ->(_arg0 : LibGtk::TreeView*) {
       __return_value = __block.call(TreeView.new(_arg0))
       __return_value
      }
      connect("columns-changed", __callback)
    end

    alias CursorChangedSignal = TreeView -> 
    def on_cursor_changed(&__block : CursorChangedSignal)
      __callback = ->(_arg0 : LibGtk::TreeView*) {
       __return_value = __block.call(TreeView.new(_arg0))
       __return_value
      }
      connect("cursor-changed", __callback)
    end

    alias ExpandCollapseCursorRowSignal = TreeView, Bool, Bool, Bool -> Bool
    def on_expand_collapse_cursor_row(&__block : ExpandCollapseCursorRowSignal)
      __callback = ->(_arg0 : LibGtk::TreeView*, _arg1 : LibGtk::Bool*, _arg2 : LibGtk::Bool*, _arg3 : LibGtk::Bool*) {
       __return_value = __block.call(TreeView.new(_arg0), _arg1, _arg2, _arg3)
       __return_value
      }
      connect("expand-collapse-cursor-row", __callback)
    end

    alias MoveCursorSignal = TreeView, Gtk::MovementStep, Int32 -> Bool
    def on_move_cursor(&__block : MoveCursorSignal)
      __callback = ->(_arg0 : LibGtk::TreeView*, _arg1 : LibGtk::LibGtk::MovementStep*, _arg2 : LibGtk::Int32*) {
       __return_value = __block.call(TreeView.new(_arg0), _arg1, _arg2)
       __return_value
      }
      connect("move-cursor", __callback)
    end

    alias RowActivatedSignal = TreeView, Gtk::TreePath, Gtk::TreeViewColumn -> 
    def on_row_activated(&__block : RowActivatedSignal)
      __callback = ->(_arg0 : LibGtk::TreeView*, _arg1 : LibGtk::LibGtk::TreePath*, _arg2 : LibGtk::LibGtk::TreeViewColumn*) {
       __return_value = __block.call(TreeView.new(_arg0), Gtk::TreePath.new(_arg1), Gtk::TreeViewColumn.new(_arg2))
       __return_value
      }
      connect("row-activated", __callback)
    end

    alias RowCollapsedSignal = TreeView, Gtk::TreeIter, Gtk::TreePath -> 
    def on_row_collapsed(&__block : RowCollapsedSignal)
      __callback = ->(_arg0 : LibGtk::TreeView*, _arg1 : LibGtk::LibGtk::TreeIter*, _arg2 : LibGtk::LibGtk::TreePath*) {
       __return_value = __block.call(TreeView.new(_arg0), Gtk::TreeIter.new(_arg1), Gtk::TreePath.new(_arg2))
       __return_value
      }
      connect("row-collapsed", __callback)
    end

    alias RowExpandedSignal = TreeView, Gtk::TreeIter, Gtk::TreePath -> 
    def on_row_expanded(&__block : RowExpandedSignal)
      __callback = ->(_arg0 : LibGtk::TreeView*, _arg1 : LibGtk::LibGtk::TreeIter*, _arg2 : LibGtk::LibGtk::TreePath*) {
       __return_value = __block.call(TreeView.new(_arg0), Gtk::TreeIter.new(_arg1), Gtk::TreePath.new(_arg2))
       __return_value
      }
      connect("row-expanded", __callback)
    end

    alias SelectAllSignal = TreeView -> Bool
    def on_select_all(&__block : SelectAllSignal)
      __callback = ->(_arg0 : LibGtk::TreeView*) {
       __return_value = __block.call(TreeView.new(_arg0))
       __return_value
      }
      connect("select-all", __callback)
    end

    alias SelectCursorParentSignal = TreeView -> Bool
    def on_select_cursor_parent(&__block : SelectCursorParentSignal)
      __callback = ->(_arg0 : LibGtk::TreeView*) {
       __return_value = __block.call(TreeView.new(_arg0))
       __return_value
      }
      connect("select-cursor-parent", __callback)
    end

    alias SelectCursorRowSignal = TreeView, Bool -> Bool
    def on_select_cursor_row(&__block : SelectCursorRowSignal)
      __callback = ->(_arg0 : LibGtk::TreeView*, _arg1 : LibGtk::Bool*) {
       __return_value = __block.call(TreeView.new(_arg0), _arg1)
       __return_value
      }
      connect("select-cursor-row", __callback)
    end

    alias StartInteractiveSearchSignal = TreeView -> Bool
    def on_start_interactive_search(&__block : StartInteractiveSearchSignal)
      __callback = ->(_arg0 : LibGtk::TreeView*) {
       __return_value = __block.call(TreeView.new(_arg0))
       __return_value
      }
      connect("start-interactive-search", __callback)
    end

    alias TestCollapseRowSignal = TreeView, Gtk::TreeIter, Gtk::TreePath -> Bool
    def on_test_collapse_row(&__block : TestCollapseRowSignal)
      __callback = ->(_arg0 : LibGtk::TreeView*, _arg1 : LibGtk::LibGtk::TreeIter*, _arg2 : LibGtk::LibGtk::TreePath*) {
       __return_value = __block.call(TreeView.new(_arg0), Gtk::TreeIter.new(_arg1), Gtk::TreePath.new(_arg2))
       __return_value
      }
      connect("test-collapse-row", __callback)
    end

    alias TestExpandRowSignal = TreeView, Gtk::TreeIter, Gtk::TreePath -> Bool
    def on_test_expand_row(&__block : TestExpandRowSignal)
      __callback = ->(_arg0 : LibGtk::TreeView*, _arg1 : LibGtk::LibGtk::TreeIter*, _arg2 : LibGtk::LibGtk::TreePath*) {
       __return_value = __block.call(TreeView.new(_arg0), Gtk::TreeIter.new(_arg1), Gtk::TreePath.new(_arg2))
       __return_value
      }
      connect("test-expand-row", __callback)
    end

    alias ToggleCursorRowSignal = TreeView -> Bool
    def on_toggle_cursor_row(&__block : ToggleCursorRowSignal)
      __callback = ->(_arg0 : LibGtk::TreeView*) {
       __return_value = __block.call(TreeView.new(_arg0))
       __return_value
      }
      connect("toggle-cursor-row", __callback)
    end

    alias UnselectAllSignal = TreeView -> Bool
    def on_unselect_all(&__block : UnselectAllSignal)
      __callback = ->(_arg0 : LibGtk::TreeView*) {
       __return_value = __block.call(TreeView.new(_arg0))
       __return_value
      }
      connect("unselect-all", __callback)
    end

  end
end

