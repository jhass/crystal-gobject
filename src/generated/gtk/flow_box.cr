require "./container"

module Gtk
  class FlowBox < Container
    @gtk_flow_box : LibGtk::FlowBox*?
    def initialize(@gtk_flow_box : LibGtk::FlowBox*)
    end

    def to_unsafe
      @gtk_flow_box.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable







    def self.new : self
      __return_value = LibGtk.flow_box_new
      cast Gtk::Widget.new(__return_value)
    end

    def bind_model(model, create_widget_func : LibGtk::FlowBoxCreateWidgetFunc, user_data, user_data_free_func : LibGLib::DestroyNotify)
      __return_value = LibGtk.flow_box_bind_model(to_unsafe.as(LibGtk::FlowBox*), model && model.to_unsafe.as(LibGio::ListModel*), create_widget_func, user_data && user_data, user_data_free_func)
      __return_value
    end

    def activate_on_single_click
      __return_value = LibGtk.flow_box_get_activate_on_single_click(to_unsafe.as(LibGtk::FlowBox*))
      __return_value
    end

    def child_at_index(idx)
      __return_value = LibGtk.flow_box_get_child_at_index(to_unsafe.as(LibGtk::FlowBox*), Int32.new(idx))
      Gtk::FlowBoxChild.new(__return_value) if __return_value
    end

    def column_spacing
      __return_value = LibGtk.flow_box_get_column_spacing(to_unsafe.as(LibGtk::FlowBox*))
      __return_value
    end

    def homogeneous
      __return_value = LibGtk.flow_box_get_homogeneous(to_unsafe.as(LibGtk::FlowBox*))
      __return_value
    end

    def max_children_per_line
      __return_value = LibGtk.flow_box_get_max_children_per_line(to_unsafe.as(LibGtk::FlowBox*))
      __return_value
    end

    def min_children_per_line
      __return_value = LibGtk.flow_box_get_min_children_per_line(to_unsafe.as(LibGtk::FlowBox*))
      __return_value
    end

    def row_spacing
      __return_value = LibGtk.flow_box_get_row_spacing(to_unsafe.as(LibGtk::FlowBox*))
      __return_value
    end

    def selected_children
      __return_value = LibGtk.flow_box_get_selected_children(to_unsafe.as(LibGtk::FlowBox*))
      __return_value
    end

    def selection_mode
      __return_value = LibGtk.flow_box_get_selection_mode(to_unsafe.as(LibGtk::FlowBox*))
      __return_value
    end

    def insert(widget, position)
      __return_value = LibGtk.flow_box_insert(to_unsafe.as(LibGtk::FlowBox*), widget.to_unsafe.as(LibGtk::Widget*), Int32.new(position))
      __return_value
    end

    def invalidate_filter
      __return_value = LibGtk.flow_box_invalidate_filter(to_unsafe.as(LibGtk::FlowBox*))
      __return_value
    end

    def invalidate_sort
      __return_value = LibGtk.flow_box_invalidate_sort(to_unsafe.as(LibGtk::FlowBox*))
      __return_value
    end

    def select_all
      __return_value = LibGtk.flow_box_select_all(to_unsafe.as(LibGtk::FlowBox*))
      __return_value
    end

    def select_child(child)
      __return_value = LibGtk.flow_box_select_child(to_unsafe.as(LibGtk::FlowBox*), child.to_unsafe.as(LibGtk::FlowBoxChild*))
      __return_value
    end

    def selected_foreach(func : LibGtk::FlowBoxForeachFunc, data)
      __return_value = LibGtk.flow_box_selected_foreach(to_unsafe.as(LibGtk::FlowBox*), func, data && data)
      __return_value
    end

    def activate_on_single_click=(single)
      __return_value = LibGtk.flow_box_set_activate_on_single_click(to_unsafe.as(LibGtk::FlowBox*), single)
      __return_value
    end

    def column_spacing=(spacing)
      __return_value = LibGtk.flow_box_set_column_spacing(to_unsafe.as(LibGtk::FlowBox*), UInt32.new(spacing))
      __return_value
    end

    def set_filter_func(filter_func : LibGtk::FlowBoxFilterFunc?, user_data, destroy : LibGLib::DestroyNotify)
      __return_value = LibGtk.flow_box_set_filter_func(to_unsafe.as(LibGtk::FlowBox*), filter_func && filter_func, user_data && user_data, destroy)
      __return_value
    end

    def hadjustment=(adjustment)
      __return_value = LibGtk.flow_box_set_hadjustment(to_unsafe.as(LibGtk::FlowBox*), adjustment.to_unsafe.as(LibGtk::Adjustment*))
      __return_value
    end

    def homogeneous=(homogeneous)
      __return_value = LibGtk.flow_box_set_homogeneous(to_unsafe.as(LibGtk::FlowBox*), homogeneous)
      __return_value
    end

    def max_children_per_line=(n_children)
      __return_value = LibGtk.flow_box_set_max_children_per_line(to_unsafe.as(LibGtk::FlowBox*), UInt32.new(n_children))
      __return_value
    end

    def min_children_per_line=(n_children)
      __return_value = LibGtk.flow_box_set_min_children_per_line(to_unsafe.as(LibGtk::FlowBox*), UInt32.new(n_children))
      __return_value
    end

    def row_spacing=(spacing)
      __return_value = LibGtk.flow_box_set_row_spacing(to_unsafe.as(LibGtk::FlowBox*), UInt32.new(spacing))
      __return_value
    end

    def selection_mode=(mode)
      __return_value = LibGtk.flow_box_set_selection_mode(to_unsafe.as(LibGtk::FlowBox*), mode)
      __return_value
    end

    def set_sort_func(sort_func : LibGtk::FlowBoxSortFunc?, user_data, destroy : LibGLib::DestroyNotify)
      __return_value = LibGtk.flow_box_set_sort_func(to_unsafe.as(LibGtk::FlowBox*), sort_func && sort_func, user_data && user_data, destroy)
      __return_value
    end

    def vadjustment=(adjustment)
      __return_value = LibGtk.flow_box_set_vadjustment(to_unsafe.as(LibGtk::FlowBox*), adjustment.to_unsafe.as(LibGtk::Adjustment*))
      __return_value
    end

    def unselect_all
      __return_value = LibGtk.flow_box_unselect_all(to_unsafe.as(LibGtk::FlowBox*))
      __return_value
    end

    def unselect_child(child)
      __return_value = LibGtk.flow_box_unselect_child(to_unsafe.as(LibGtk::FlowBox*), child.to_unsafe.as(LibGtk::FlowBoxChild*))
      __return_value
    end

    alias ActivateCursorChildSignal = FlowBox ->
    def on_activate_cursor_child(&__block : ActivateCursorChildSignal)
      __callback = ->(_arg0 : LibGtk::FlowBox*) {
       __return_value = __block.call(FlowBox.new(_arg0))
       __return_value
      }
      connect("activate-cursor-child", __callback)
    end

    alias ChildActivatedSignal = FlowBox, Gtk::FlowBoxChild ->
    def on_child_activated(&__block : ChildActivatedSignal)
      __callback = ->(_arg0 : LibGtk::FlowBox*, _arg1 : LibGtk::LibGtk::FlowBoxChild*) {
       __return_value = __block.call(FlowBox.new(_arg0), Gtk::FlowBoxChild.new(_arg1))
       __return_value
      }
      connect("child-activated", __callback)
    end

    alias MoveCursorSignal = FlowBox, Gtk::MovementStep, Int32 -> Bool
    def on_move_cursor(&__block : MoveCursorSignal)
      __callback = ->(_arg0 : LibGtk::FlowBox*, _arg1 : LibGtk::LibGtk::MovementStep*, _arg2 : LibGtk::Int32*) {
       __return_value = __block.call(FlowBox.new(_arg0), _arg1, _arg2)
       __return_value
      }
      connect("move-cursor", __callback)
    end

    alias SelectAllSignal = FlowBox ->
    def on_select_all(&__block : SelectAllSignal)
      __callback = ->(_arg0 : LibGtk::FlowBox*) {
       __return_value = __block.call(FlowBox.new(_arg0))
       __return_value
      }
      connect("select-all", __callback)
    end

    alias SelectedChildrenChangedSignal = FlowBox ->
    def on_selected_children_changed(&__block : SelectedChildrenChangedSignal)
      __callback = ->(_arg0 : LibGtk::FlowBox*) {
       __return_value = __block.call(FlowBox.new(_arg0))
       __return_value
      }
      connect("selected-children-changed", __callback)
    end

    alias ToggleCursorChildSignal = FlowBox ->
    def on_toggle_cursor_child(&__block : ToggleCursorChildSignal)
      __callback = ->(_arg0 : LibGtk::FlowBox*) {
       __return_value = __block.call(FlowBox.new(_arg0))
       __return_value
      }
      connect("toggle-cursor-child", __callback)
    end

    alias UnselectAllSignal = FlowBox ->
    def on_unselect_all(&__block : UnselectAllSignal)
      __callback = ->(_arg0 : LibGtk::FlowBox*) {
       __return_value = __block.call(FlowBox.new(_arg0))
       __return_value
      }
      connect("unselect-all", __callback)
    end

  end
end

