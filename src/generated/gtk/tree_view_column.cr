module Gtk
  class TreeViewColumn < GObject::InitiallyUnowned
    @pointer : Void*
    def initialize(pointer : LibGtk::TreeViewColumn*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::TreeViewColumn*)
    end

    # Implements Buildable
    # Implements CellLayout
    def alignment
      __return_value = LibGtk.tree_view_column_get_alignment(to_unsafe.as(LibGtk::TreeViewColumn*))
      __return_value
    end

    def cell_area
      __return_value = LibGtk.tree_view_column_get_cell_area(to_unsafe.as(LibGtk::TreeViewColumn*))
      Gtk::CellArea.new(__return_value)
    end

    def clickable
      __return_value = LibGtk.tree_view_column_get_clickable(to_unsafe.as(LibGtk::TreeViewColumn*))
      __return_value
    end

    def expand
      __return_value = LibGtk.tree_view_column_get_expand(to_unsafe.as(LibGtk::TreeViewColumn*))
      __return_value
    end

    def fixed_width
      __return_value = LibGtk.tree_view_column_get_fixed_width(to_unsafe.as(LibGtk::TreeViewColumn*))
      __return_value
    end

    def max_width
      __return_value = LibGtk.tree_view_column_get_max_width(to_unsafe.as(LibGtk::TreeViewColumn*))
      __return_value
    end

    def min_width
      __return_value = LibGtk.tree_view_column_get_min_width(to_unsafe.as(LibGtk::TreeViewColumn*))
      __return_value
    end

    def reorderable
      __return_value = LibGtk.tree_view_column_get_reorderable(to_unsafe.as(LibGtk::TreeViewColumn*))
      __return_value
    end

    def resizable
      __return_value = LibGtk.tree_view_column_get_resizable(to_unsafe.as(LibGtk::TreeViewColumn*))
      __return_value
    end

    def sizing
      __return_value = LibGtk.tree_view_column_get_sizing(to_unsafe.as(LibGtk::TreeViewColumn*))
      __return_value
    end

    def sort_column_id
      __return_value = LibGtk.tree_view_column_get_sort_column_id(to_unsafe.as(LibGtk::TreeViewColumn*))
      __return_value
    end

    def sort_indicator
      __return_value = LibGtk.tree_view_column_get_sort_indicator(to_unsafe.as(LibGtk::TreeViewColumn*))
      __return_value
    end

    def sort_order
      __return_value = LibGtk.tree_view_column_get_sort_order(to_unsafe.as(LibGtk::TreeViewColumn*))
      __return_value
    end

    def spacing
      __return_value = LibGtk.tree_view_column_get_spacing(to_unsafe.as(LibGtk::TreeViewColumn*))
      __return_value
    end

    def title
      __return_value = LibGtk.tree_view_column_get_title(to_unsafe.as(LibGtk::TreeViewColumn*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def visible
      __return_value = LibGtk.tree_view_column_get_visible(to_unsafe.as(LibGtk::TreeViewColumn*))
      __return_value
    end

    def widget
      __return_value = LibGtk.tree_view_column_get_widget(to_unsafe.as(LibGtk::TreeViewColumn*))
      Gtk::Widget.new(__return_value)
    end

    def width
      __return_value = LibGtk.tree_view_column_get_width(to_unsafe.as(LibGtk::TreeViewColumn*))
      __return_value
    end

    def x_offset
      __return_value = LibGtk.tree_view_column_get_x_offset(to_unsafe.as(LibGtk::TreeViewColumn*))
      __return_value
    end

    def self.new : self
      __return_value = LibGtk.tree_view_column_new
      cast Gtk::TreeViewColumn.new(__return_value)
    end

    def self.new_with_area(area) : self
      __return_value = LibGtk.tree_view_column_new_with_area(area.to_unsafe.as(LibGtk::CellArea*))
      cast Gtk::TreeViewColumn.new(__return_value)
    end

    def add_attribute(cell_renderer, attribute, column)
      LibGtk.tree_view_column_add_attribute(@pointer.as(LibGtk::TreeViewColumn*), cell_renderer.to_unsafe.as(LibGtk::CellRenderer*), attribute.to_unsafe, Int32.new(column))
      nil
    end

    def cell_get_position(cell_renderer, x_offset, width)
      __return_value = LibGtk.tree_view_column_cell_get_position(@pointer.as(LibGtk::TreeViewColumn*), cell_renderer.to_unsafe.as(LibGtk::CellRenderer*), x_offset, width)
      __return_value
    end

    def cell_get_size(cell_area, x_offset, y_offset, width, height)
      LibGtk.tree_view_column_cell_get_size(@pointer.as(LibGtk::TreeViewColumn*), cell_area ? cell_area.to_unsafe.as(LibGdk::Rectangle*) : nil, x_offset, y_offset, width, height)
      nil
    end

    def cell_is_visible
      __return_value = LibGtk.tree_view_column_cell_is_visible(@pointer.as(LibGtk::TreeViewColumn*))
      __return_value
    end

    def cell_set_cell_data(tree_model, iter, is_expander, is_expanded)
      LibGtk.tree_view_column_cell_set_cell_data(@pointer.as(LibGtk::TreeViewColumn*), tree_model.to_unsafe.as(LibGtk::TreeModel*), iter.to_unsafe.as(LibGtk::TreeIter*), is_expander, is_expanded)
      nil
    end

    def clear
      LibGtk.tree_view_column_clear(@pointer.as(LibGtk::TreeViewColumn*))
      nil
    end

    def clear_attributes(cell_renderer)
      LibGtk.tree_view_column_clear_attributes(@pointer.as(LibGtk::TreeViewColumn*), cell_renderer.to_unsafe.as(LibGtk::CellRenderer*))
      nil
    end

    def clicked
      LibGtk.tree_view_column_clicked(@pointer.as(LibGtk::TreeViewColumn*))
      nil
    end

    def focus_cell(cell)
      LibGtk.tree_view_column_focus_cell(@pointer.as(LibGtk::TreeViewColumn*), cell.to_unsafe.as(LibGtk::CellRenderer*))
      nil
    end

    def alignment
      __return_value = LibGtk.tree_view_column_get_alignment(@pointer.as(LibGtk::TreeViewColumn*))
      __return_value
    end

    def button
      __return_value = LibGtk.tree_view_column_get_button(@pointer.as(LibGtk::TreeViewColumn*))
      Gtk::Widget.new(__return_value)
    end

    def clickable
      __return_value = LibGtk.tree_view_column_get_clickable(@pointer.as(LibGtk::TreeViewColumn*))
      __return_value
    end

    def expand
      __return_value = LibGtk.tree_view_column_get_expand(@pointer.as(LibGtk::TreeViewColumn*))
      __return_value
    end

    def fixed_width
      __return_value = LibGtk.tree_view_column_get_fixed_width(@pointer.as(LibGtk::TreeViewColumn*))
      __return_value
    end

    def max_width
      __return_value = LibGtk.tree_view_column_get_max_width(@pointer.as(LibGtk::TreeViewColumn*))
      __return_value
    end

    def min_width
      __return_value = LibGtk.tree_view_column_get_min_width(@pointer.as(LibGtk::TreeViewColumn*))
      __return_value
    end

    def reorderable
      __return_value = LibGtk.tree_view_column_get_reorderable(@pointer.as(LibGtk::TreeViewColumn*))
      __return_value
    end

    def resizable
      __return_value = LibGtk.tree_view_column_get_resizable(@pointer.as(LibGtk::TreeViewColumn*))
      __return_value
    end

    def sizing
      __return_value = LibGtk.tree_view_column_get_sizing(@pointer.as(LibGtk::TreeViewColumn*))
      __return_value
    end

    def sort_column_id
      __return_value = LibGtk.tree_view_column_get_sort_column_id(@pointer.as(LibGtk::TreeViewColumn*))
      __return_value
    end

    def sort_indicator
      __return_value = LibGtk.tree_view_column_get_sort_indicator(@pointer.as(LibGtk::TreeViewColumn*))
      __return_value
    end

    def sort_order
      __return_value = LibGtk.tree_view_column_get_sort_order(@pointer.as(LibGtk::TreeViewColumn*))
      __return_value
    end

    def spacing
      __return_value = LibGtk.tree_view_column_get_spacing(@pointer.as(LibGtk::TreeViewColumn*))
      __return_value
    end

    def title
      __return_value = LibGtk.tree_view_column_get_title(@pointer.as(LibGtk::TreeViewColumn*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def tree_view
      __return_value = LibGtk.tree_view_column_get_tree_view(@pointer.as(LibGtk::TreeViewColumn*))
      Gtk::Widget.new(__return_value) if __return_value
    end

    def visible
      __return_value = LibGtk.tree_view_column_get_visible(@pointer.as(LibGtk::TreeViewColumn*))
      __return_value
    end

    def widget
      __return_value = LibGtk.tree_view_column_get_widget(@pointer.as(LibGtk::TreeViewColumn*))
      Gtk::Widget.new(__return_value) if __return_value
    end

    def width
      __return_value = LibGtk.tree_view_column_get_width(@pointer.as(LibGtk::TreeViewColumn*))
      __return_value
    end

    def x_offset
      __return_value = LibGtk.tree_view_column_get_x_offset(@pointer.as(LibGtk::TreeViewColumn*))
      __return_value
    end

    def pack_end(cell, expand)
      LibGtk.tree_view_column_pack_end(@pointer.as(LibGtk::TreeViewColumn*), cell.to_unsafe.as(LibGtk::CellRenderer*), expand)
      nil
    end

    def pack_start(cell, expand)
      LibGtk.tree_view_column_pack_start(@pointer.as(LibGtk::TreeViewColumn*), cell.to_unsafe.as(LibGtk::CellRenderer*), expand)
      nil
    end

    def queue_resize
      LibGtk.tree_view_column_queue_resize(@pointer.as(LibGtk::TreeViewColumn*))
      nil
    end

    def alignment=(xalign)
      LibGtk.tree_view_column_set_alignment(@pointer.as(LibGtk::TreeViewColumn*), Float32.new(xalign))
      nil
    end

    def set_cell_data_func(cell_renderer, func, func_data, destroy)
      LibGtk.tree_view_column_set_cell_data_func(@pointer.as(LibGtk::TreeViewColumn*), cell_renderer.to_unsafe.as(LibGtk::CellRenderer*), func ? func : nil, func_data ? func_data : nil, destroy)
      nil
    end

    def clickable=(clickable)
      LibGtk.tree_view_column_set_clickable(@pointer.as(LibGtk::TreeViewColumn*), clickable)
      nil
    end

    def expand=(expand)
      LibGtk.tree_view_column_set_expand(@pointer.as(LibGtk::TreeViewColumn*), expand)
      nil
    end

    def fixed_width=(fixed_width)
      LibGtk.tree_view_column_set_fixed_width(@pointer.as(LibGtk::TreeViewColumn*), Int32.new(fixed_width))
      nil
    end

    def max_width=(max_width)
      LibGtk.tree_view_column_set_max_width(@pointer.as(LibGtk::TreeViewColumn*), Int32.new(max_width))
      nil
    end

    def min_width=(min_width)
      LibGtk.tree_view_column_set_min_width(@pointer.as(LibGtk::TreeViewColumn*), Int32.new(min_width))
      nil
    end

    def reorderable=(reorderable)
      LibGtk.tree_view_column_set_reorderable(@pointer.as(LibGtk::TreeViewColumn*), reorderable)
      nil
    end

    def resizable=(resizable)
      LibGtk.tree_view_column_set_resizable(@pointer.as(LibGtk::TreeViewColumn*), resizable)
      nil
    end

    def sizing=(type : Gtk::TreeViewColumnSizing)
      LibGtk.tree_view_column_set_sizing(@pointer.as(LibGtk::TreeViewColumn*), type)
      nil
    end

    def sort_column_id=(sort_column_id)
      LibGtk.tree_view_column_set_sort_column_id(@pointer.as(LibGtk::TreeViewColumn*), Int32.new(sort_column_id))
      nil
    end

    def sort_indicator=(setting)
      LibGtk.tree_view_column_set_sort_indicator(@pointer.as(LibGtk::TreeViewColumn*), setting)
      nil
    end

    def sort_order=(order : Gtk::SortType)
      LibGtk.tree_view_column_set_sort_order(@pointer.as(LibGtk::TreeViewColumn*), order)
      nil
    end

    def spacing=(spacing)
      LibGtk.tree_view_column_set_spacing(@pointer.as(LibGtk::TreeViewColumn*), Int32.new(spacing))
      nil
    end

    def title=(title)
      LibGtk.tree_view_column_set_title(@pointer.as(LibGtk::TreeViewColumn*), title.to_unsafe)
      nil
    end

    def visible=(visible)
      LibGtk.tree_view_column_set_visible(@pointer.as(LibGtk::TreeViewColumn*), visible)
      nil
    end

    def widget=(widget)
      LibGtk.tree_view_column_set_widget(@pointer.as(LibGtk::TreeViewColumn*), widget ? widget.to_unsafe.as(LibGtk::Widget*) : nil)
      nil
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

