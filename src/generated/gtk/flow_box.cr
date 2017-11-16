require "./container"

module Gtk
  class FlowBox < Container
    @pointer : Void*
    def initialize(pointer : LibGtk::FlowBox*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::FlowBox*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def activate_on_single_click
      __return_value = LibGtk.flow_box_get_activate_on_single_click(to_unsafe.as(LibGtk::FlowBox*))
      __return_value
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

    def selection_mode
      __return_value = LibGtk.flow_box_get_selection_mode(to_unsafe.as(LibGtk::FlowBox*))
      __return_value
    end

    def self.new : self
      __return_value = LibGtk.flow_box_new
      cast Gtk::Widget.new(__return_value)
    end

    def bind_model(model, create_widget_func, user_data, user_data_free_func)
      LibGtk.flow_box_bind_model(@pointer.as(LibGtk::FlowBox*), model ? model.to_unsafe.as(LibGio::ListModel*) : nil, create_widget_func, user_data ? user_data : nil, user_data_free_func)
      nil
    end

    def activate_on_single_click
      __return_value = LibGtk.flow_box_get_activate_on_single_click(@pointer.as(LibGtk::FlowBox*))
      __return_value
    end

    def child_at_index(idx)
      __return_value = LibGtk.flow_box_get_child_at_index(@pointer.as(LibGtk::FlowBox*), Int32.new(idx))
      Gtk::FlowBoxChild.new(__return_value) if __return_value
    end

    def child_at_pos(x, y)
      __return_value = LibGtk.flow_box_get_child_at_pos(@pointer.as(LibGtk::FlowBox*), Int32.new(x), Int32.new(y))
      Gtk::FlowBoxChild.new(__return_value) if __return_value
    end

    def column_spacing
      __return_value = LibGtk.flow_box_get_column_spacing(@pointer.as(LibGtk::FlowBox*))
      __return_value
    end

    def homogeneous
      __return_value = LibGtk.flow_box_get_homogeneous(@pointer.as(LibGtk::FlowBox*))
      __return_value
    end

    def max_children_per_line
      __return_value = LibGtk.flow_box_get_max_children_per_line(@pointer.as(LibGtk::FlowBox*))
      __return_value
    end

    def min_children_per_line
      __return_value = LibGtk.flow_box_get_min_children_per_line(@pointer.as(LibGtk::FlowBox*))
      __return_value
    end

    def row_spacing
      __return_value = LibGtk.flow_box_get_row_spacing(@pointer.as(LibGtk::FlowBox*))
      __return_value
    end

    def selected_children
      __return_value = LibGtk.flow_box_get_selected_children(@pointer.as(LibGtk::FlowBox*))
      GLib::ListIterator(Gtk::FlowBoxChild, LibGtk::FlowBoxChild*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def selection_mode
      __return_value = LibGtk.flow_box_get_selection_mode(@pointer.as(LibGtk::FlowBox*))
      __return_value
    end

    def insert(widget, position)
      LibGtk.flow_box_insert(@pointer.as(LibGtk::FlowBox*), widget.to_unsafe.as(LibGtk::Widget*), Int32.new(position))
      nil
    end

    def invalidate_filter
      LibGtk.flow_box_invalidate_filter(@pointer.as(LibGtk::FlowBox*))
      nil
    end

    def invalidate_sort
      LibGtk.flow_box_invalidate_sort(@pointer.as(LibGtk::FlowBox*))
      nil
    end

    def select_all
      LibGtk.flow_box_select_all(@pointer.as(LibGtk::FlowBox*))
      nil
    end

    def select_child(child)
      LibGtk.flow_box_select_child(@pointer.as(LibGtk::FlowBox*), child.to_unsafe.as(LibGtk::FlowBoxChild*))
      nil
    end

    def selected_foreach(func, data)
      LibGtk.flow_box_selected_foreach(@pointer.as(LibGtk::FlowBox*), func, data ? data : nil)
      nil
    end

    def activate_on_single_click=(single)
      LibGtk.flow_box_set_activate_on_single_click(@pointer.as(LibGtk::FlowBox*), single)
      nil
    end

    def column_spacing=(spacing)
      LibGtk.flow_box_set_column_spacing(@pointer.as(LibGtk::FlowBox*), UInt32.new(spacing))
      nil
    end

    def set_filter_func(filter_func, user_data, destroy)
      LibGtk.flow_box_set_filter_func(@pointer.as(LibGtk::FlowBox*), filter_func ? filter_func : nil, user_data ? user_data : nil, destroy)
      nil
    end

    def hadjustment=(adjustment)
      LibGtk.flow_box_set_hadjustment(@pointer.as(LibGtk::FlowBox*), adjustment.to_unsafe.as(LibGtk::Adjustment*))
      nil
    end

    def homogeneous=(homogeneous)
      LibGtk.flow_box_set_homogeneous(@pointer.as(LibGtk::FlowBox*), homogeneous)
      nil
    end

    def max_children_per_line=(n_children)
      LibGtk.flow_box_set_max_children_per_line(@pointer.as(LibGtk::FlowBox*), UInt32.new(n_children))
      nil
    end

    def min_children_per_line=(n_children)
      LibGtk.flow_box_set_min_children_per_line(@pointer.as(LibGtk::FlowBox*), UInt32.new(n_children))
      nil
    end

    def row_spacing=(spacing)
      LibGtk.flow_box_set_row_spacing(@pointer.as(LibGtk::FlowBox*), UInt32.new(spacing))
      nil
    end

    def selection_mode=(mode : Gtk::SelectionMode)
      LibGtk.flow_box_set_selection_mode(@pointer.as(LibGtk::FlowBox*), mode)
      nil
    end

    def set_sort_func(sort_func, user_data, destroy)
      LibGtk.flow_box_set_sort_func(@pointer.as(LibGtk::FlowBox*), sort_func ? sort_func : nil, user_data ? user_data : nil, destroy)
      nil
    end

    def vadjustment=(adjustment)
      LibGtk.flow_box_set_vadjustment(@pointer.as(LibGtk::FlowBox*), adjustment.to_unsafe.as(LibGtk::Adjustment*))
      nil
    end

    def unselect_all
      LibGtk.flow_box_unselect_all(@pointer.as(LibGtk::FlowBox*))
      nil
    end

    def unselect_child(child)
      LibGtk.flow_box_unselect_child(@pointer.as(LibGtk::FlowBox*), child.to_unsafe.as(LibGtk::FlowBoxChild*))
      nil
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

