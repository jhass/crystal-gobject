module Gtk
  class TreeViewColumn < GObject::InitiallyUnowned
    def initialize(@gtk_tree_view_column)
    end

    def to_unsafe
      @gtk_tree_view_column.not_nil!
    end

    # Implements Buildable
    # Implements CellLayout



















    def self.new_internal
      __return_value = LibGtk.tree_view_column_new
      Gtk::TreeViewColumn.new(__return_value)
    end

    def self.new_with_area(area)
      __return_value = LibGtk.tree_view_column_new_with_area((area.to_unsafe as LibGtk::CellArea*))
      Gtk::TreeViewColumn.new(__return_value)
    end

    def add_attribute(cell_renderer, attribute, column)
      __return_value = LibGtk.tree_view_column_add_attribute((to_unsafe as LibGtk::TreeViewColumn*), (cell_renderer.to_unsafe as LibGtk::CellRenderer*), attribute, Int32.new(column))
      __return_value
    end

    def cell_get_position(cell_renderer, x_offset, width)
      __return_value = LibGtk.tree_view_column_cell_get_position((to_unsafe as LibGtk::TreeViewColumn*), (cell_renderer.to_unsafe as LibGtk::CellRenderer*), Int32.new(x_offset), Int32.new(width))
      __return_value
    end

    def cell_get_size(cell_area, x_offset, y_offset, width, height)
      __return_value = LibGtk.tree_view_column_cell_get_size((to_unsafe as LibGtk::TreeViewColumn*), cell_area && (cell_area.to_unsafe as LibGdk::Rectangle*), Int32.new(x_offset), Int32.new(y_offset), Int32.new(width), Int32.new(height))
      __return_value
    end

    def cell_is_visible
      __return_value = LibGtk.tree_view_column_cell_is_visible((to_unsafe as LibGtk::TreeViewColumn*))
      __return_value
    end

    def cell_set_cell_data(tree_model, iter, is_expander, is_expanded)
      __return_value = LibGtk.tree_view_column_cell_set_cell_data((to_unsafe as LibGtk::TreeViewColumn*), (tree_model.to_unsafe as LibGtk::TreeModel*), (iter.to_unsafe as LibGtk::TreeIter*), is_expander, is_expanded)
      __return_value
    end

    def clear
      __return_value = LibGtk.tree_view_column_clear((to_unsafe as LibGtk::TreeViewColumn*))
      __return_value
    end

    def clear_attributes(cell_renderer)
      __return_value = LibGtk.tree_view_column_clear_attributes((to_unsafe as LibGtk::TreeViewColumn*), (cell_renderer.to_unsafe as LibGtk::CellRenderer*))
      __return_value
    end

    def clicked
      __return_value = LibGtk.tree_view_column_clicked((to_unsafe as LibGtk::TreeViewColumn*))
      __return_value
    end

    def focus_cell(cell)
      __return_value = LibGtk.tree_view_column_focus_cell((to_unsafe as LibGtk::TreeViewColumn*), (cell.to_unsafe as LibGtk::CellRenderer*))
      __return_value
    end

    def alignment
      __return_value = LibGtk.tree_view_column_get_alignment((to_unsafe as LibGtk::TreeViewColumn*))
      __return_value
    end

    def button
      __return_value = LibGtk.tree_view_column_get_button((to_unsafe as LibGtk::TreeViewColumn*))
      Gtk::Widget.new(__return_value)
    end

    def clickable
      __return_value = LibGtk.tree_view_column_get_clickable((to_unsafe as LibGtk::TreeViewColumn*))
      __return_value
    end

    def expand
      __return_value = LibGtk.tree_view_column_get_expand((to_unsafe as LibGtk::TreeViewColumn*))
      __return_value
    end

    def fixed_width
      __return_value = LibGtk.tree_view_column_get_fixed_width((to_unsafe as LibGtk::TreeViewColumn*))
      __return_value
    end

    def max_width
      __return_value = LibGtk.tree_view_column_get_max_width((to_unsafe as LibGtk::TreeViewColumn*))
      __return_value
    end

    def min_width
      __return_value = LibGtk.tree_view_column_get_min_width((to_unsafe as LibGtk::TreeViewColumn*))
      __return_value
    end

    def reorderable
      __return_value = LibGtk.tree_view_column_get_reorderable((to_unsafe as LibGtk::TreeViewColumn*))
      __return_value
    end

    def resizable
      __return_value = LibGtk.tree_view_column_get_resizable((to_unsafe as LibGtk::TreeViewColumn*))
      __return_value
    end

    def sizing
      __return_value = LibGtk.tree_view_column_get_sizing((to_unsafe as LibGtk::TreeViewColumn*))
      __return_value
    end

    def sort_column_id
      __return_value = LibGtk.tree_view_column_get_sort_column_id((to_unsafe as LibGtk::TreeViewColumn*))
      __return_value
    end

    def sort_indicator
      __return_value = LibGtk.tree_view_column_get_sort_indicator((to_unsafe as LibGtk::TreeViewColumn*))
      __return_value
    end

    def sort_order
      __return_value = LibGtk.tree_view_column_get_sort_order((to_unsafe as LibGtk::TreeViewColumn*))
      __return_value
    end

    def spacing
      __return_value = LibGtk.tree_view_column_get_spacing((to_unsafe as LibGtk::TreeViewColumn*))
      __return_value
    end

    def title
      __return_value = LibGtk.tree_view_column_get_title((to_unsafe as LibGtk::TreeViewColumn*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def tree_view
      __return_value = LibGtk.tree_view_column_get_tree_view((to_unsafe as LibGtk::TreeViewColumn*))
      Gtk::Widget.new(__return_value)
    end

    def visible
      __return_value = LibGtk.tree_view_column_get_visible((to_unsafe as LibGtk::TreeViewColumn*))
      __return_value
    end

    def widget
      __return_value = LibGtk.tree_view_column_get_widget((to_unsafe as LibGtk::TreeViewColumn*))
      Gtk::Widget.new(__return_value)
    end

    def width
      __return_value = LibGtk.tree_view_column_get_width((to_unsafe as LibGtk::TreeViewColumn*))
      __return_value
    end

    def x_offset
      __return_value = LibGtk.tree_view_column_get_x_offset((to_unsafe as LibGtk::TreeViewColumn*))
      __return_value
    end

    def pack_end(cell, expand)
      __return_value = LibGtk.tree_view_column_pack_end((to_unsafe as LibGtk::TreeViewColumn*), (cell.to_unsafe as LibGtk::CellRenderer*), expand)
      __return_value
    end

    def pack_start(cell, expand)
      __return_value = LibGtk.tree_view_column_pack_start((to_unsafe as LibGtk::TreeViewColumn*), (cell.to_unsafe as LibGtk::CellRenderer*), expand)
      __return_value
    end

    def queue_resize
      __return_value = LibGtk.tree_view_column_queue_resize((to_unsafe as LibGtk::TreeViewColumn*))
      __return_value
    end

    def alignment=(xalign)
      __return_value = LibGtk.tree_view_column_set_alignment((to_unsafe as LibGtk::TreeViewColumn*), Float32.new(xalign))
      __return_value
    end

    def set_cell_data_func(cell_renderer, func : LibGtk::TreeCellDataFunc?, func_data, destroy : LibGLib::DestroyNotify)
      __return_value = LibGtk.tree_view_column_set_cell_data_func((to_unsafe as LibGtk::TreeViewColumn*), (cell_renderer.to_unsafe as LibGtk::CellRenderer*), func && func, func_data, destroy)
      __return_value
    end

    def clickable=(clickable)
      __return_value = LibGtk.tree_view_column_set_clickable((to_unsafe as LibGtk::TreeViewColumn*), clickable)
      __return_value
    end

    def expand=(expand)
      __return_value = LibGtk.tree_view_column_set_expand((to_unsafe as LibGtk::TreeViewColumn*), expand)
      __return_value
    end

    def fixed_width=(fixed_width)
      __return_value = LibGtk.tree_view_column_set_fixed_width((to_unsafe as LibGtk::TreeViewColumn*), Int32.new(fixed_width))
      __return_value
    end

    def max_width=(max_width)
      __return_value = LibGtk.tree_view_column_set_max_width((to_unsafe as LibGtk::TreeViewColumn*), Int32.new(max_width))
      __return_value
    end

    def min_width=(min_width)
      __return_value = LibGtk.tree_view_column_set_min_width((to_unsafe as LibGtk::TreeViewColumn*), Int32.new(min_width))
      __return_value
    end

    def reorderable=(reorderable)
      __return_value = LibGtk.tree_view_column_set_reorderable((to_unsafe as LibGtk::TreeViewColumn*), reorderable)
      __return_value
    end

    def resizable=(resizable)
      __return_value = LibGtk.tree_view_column_set_resizable((to_unsafe as LibGtk::TreeViewColumn*), resizable)
      __return_value
    end

    def sizing=(type)
      __return_value = LibGtk.tree_view_column_set_sizing((to_unsafe as LibGtk::TreeViewColumn*), type)
      __return_value
    end

    def sort_column_id=(sort_column_id)
      __return_value = LibGtk.tree_view_column_set_sort_column_id((to_unsafe as LibGtk::TreeViewColumn*), Int32.new(sort_column_id))
      __return_value
    end

    def sort_indicator=(setting)
      __return_value = LibGtk.tree_view_column_set_sort_indicator((to_unsafe as LibGtk::TreeViewColumn*), setting)
      __return_value
    end

    def sort_order=(order)
      __return_value = LibGtk.tree_view_column_set_sort_order((to_unsafe as LibGtk::TreeViewColumn*), order)
      __return_value
    end

    def spacing=(spacing)
      __return_value = LibGtk.tree_view_column_set_spacing((to_unsafe as LibGtk::TreeViewColumn*), Int32.new(spacing))
      __return_value
    end

    def title=(title)
      __return_value = LibGtk.tree_view_column_set_title((to_unsafe as LibGtk::TreeViewColumn*), title)
      __return_value
    end

    def visible=(visible)
      __return_value = LibGtk.tree_view_column_set_visible((to_unsafe as LibGtk::TreeViewColumn*), visible)
      __return_value
    end

    def widget=(widget)
      __return_value = LibGtk.tree_view_column_set_widget((to_unsafe as LibGtk::TreeViewColumn*), widget && (widget.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    alias ClickedSignal = TreeViewColumn -> 
    def on_clicked(&__block : ClickedSignal)
      __callback = ->(_arg0 : LibGtk::TreeViewColumn*) {
       __return_value = __block.call(TreeViewColumn.new(_arg0))
       __return_value
      }
      connect("clicked", __callback)
    end

  end
end

