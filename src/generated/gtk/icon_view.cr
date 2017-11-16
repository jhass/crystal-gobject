require "./container"

module Gtk
  class IconView < Container
    @pointer : Void*
    def initialize(pointer : LibGtk::IconView*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::IconView*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements CellLayout
    # Implements Scrollable
    def activate_on_single_click
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "activate_on_single_click", gvalue)
      gvalue.boolean
    end

    def cell_area
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "cell_area", gvalue)
      Gtk::CellArea.cast(gvalue.object)
    end

    def column_spacing
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "column_spacing", gvalue)
      gvalue
    end

    def columns
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "columns", gvalue)
      gvalue
    end

    def item_orientation
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "item_orientation", gvalue)
      gvalue.enum
    end

    def item_padding
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "item_padding", gvalue)
      gvalue
    end

    def item_width
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "item_width", gvalue)
      gvalue
    end

    def margin
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "margin", gvalue)
      gvalue
    end

    def markup_column
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "markup_column", gvalue)
      gvalue
    end

    def model
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "model", gvalue)
      gvalue
    end

    def pixbuf_column
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "pixbuf_column", gvalue)
      gvalue
    end

    def reorderable
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "reorderable", gvalue)
      gvalue.boolean
    end

    def row_spacing
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "row_spacing", gvalue)
      gvalue
    end

    def selection_mode
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "selection_mode", gvalue)
      gvalue.enum
    end

    def spacing
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "spacing", gvalue)
      gvalue
    end

    def text_column
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "text_column", gvalue)
      gvalue
    end

    def tooltip_column
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "tooltip_column", gvalue)
      gvalue
    end

    def self.new : self
      __return_value = LibGtk.icon_view_new
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_with_area(area) : self
      __return_value = LibGtk.icon_view_new_with_area(area.to_unsafe.as(LibGtk::CellArea*))
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_with_model(model) : self
      __return_value = LibGtk.icon_view_new_with_model(model.to_unsafe.as(LibGtk::TreeModel*))
      cast Gtk::Widget.new(__return_value)
    end

    def convert_widget_to_bin_window_coords(wx, wy, bx, by)
      LibGtk.icon_view_convert_widget_to_bin_window_coords(@pointer.as(LibGtk::IconView*), Int32.new(wx), Int32.new(wy), bx, by)
      nil
    end

    def create_drag_icon(path)
      __return_value = LibGtk.icon_view_create_drag_icon(@pointer.as(LibGtk::IconView*), path.to_unsafe.as(LibGtk::TreePath*))
      Cairo::Surface.new(__return_value)
    end

    def enable_model_drag_dest(targets, n_targets, actions : Gdk::DragAction)
      LibGtk.icon_view_enable_model_drag_dest(@pointer.as(LibGtk::IconView*), targets, Int32.new(n_targets), actions)
      nil
    end

    def enable_model_drag_source(start_button_mask : Gdk::ModifierType, targets, n_targets, actions : Gdk::DragAction)
      LibGtk.icon_view_enable_model_drag_source(@pointer.as(LibGtk::IconView*), start_button_mask, targets, Int32.new(n_targets), actions)
      nil
    end

    def activate_on_single_click
      __return_value = LibGtk.icon_view_get_activate_on_single_click(@pointer.as(LibGtk::IconView*))
      __return_value
    end

    def cell_rect(path, cell, rect)
      __return_value = LibGtk.icon_view_get_cell_rect(@pointer.as(LibGtk::IconView*), path.to_unsafe.as(LibGtk::TreePath*), cell ? cell.to_unsafe.as(LibGtk::CellRenderer*) : nil, rect)
      __return_value
    end

    def column_spacing
      __return_value = LibGtk.icon_view_get_column_spacing(@pointer.as(LibGtk::IconView*))
      __return_value
    end

    def columns
      __return_value = LibGtk.icon_view_get_columns(@pointer.as(LibGtk::IconView*))
      __return_value
    end

    def cursor(path, cell)
      __return_value = LibGtk.icon_view_get_cursor(@pointer.as(LibGtk::IconView*), path, cell)
      __return_value
    end

    def dest_item_at_pos(drag_x, drag_y, path, pos : Gtk::IconViewDropPosition?)
      __return_value = LibGtk.icon_view_get_dest_item_at_pos(@pointer.as(LibGtk::IconView*), Int32.new(drag_x), Int32.new(drag_y), path, pos)
      __return_value
    end

    def drag_dest_item(path, pos : Gtk::IconViewDropPosition?)
      LibGtk.icon_view_get_drag_dest_item(@pointer.as(LibGtk::IconView*), path, pos)
      nil
    end

    def item_at_pos(x, y, path, cell)
      __return_value = LibGtk.icon_view_get_item_at_pos(@pointer.as(LibGtk::IconView*), Int32.new(x), Int32.new(y), path, cell)
      __return_value
    end

    def item_column(path)
      __return_value = LibGtk.icon_view_get_item_column(@pointer.as(LibGtk::IconView*), path.to_unsafe.as(LibGtk::TreePath*))
      __return_value
    end

    def item_orientation
      __return_value = LibGtk.icon_view_get_item_orientation(@pointer.as(LibGtk::IconView*))
      __return_value
    end

    def item_padding
      __return_value = LibGtk.icon_view_get_item_padding(@pointer.as(LibGtk::IconView*))
      __return_value
    end

    def item_row(path)
      __return_value = LibGtk.icon_view_get_item_row(@pointer.as(LibGtk::IconView*), path.to_unsafe.as(LibGtk::TreePath*))
      __return_value
    end

    def item_width
      __return_value = LibGtk.icon_view_get_item_width(@pointer.as(LibGtk::IconView*))
      __return_value
    end

    def margin
      __return_value = LibGtk.icon_view_get_margin(@pointer.as(LibGtk::IconView*))
      __return_value
    end

    def markup_column
      __return_value = LibGtk.icon_view_get_markup_column(@pointer.as(LibGtk::IconView*))
      __return_value
    end

    def model
      __return_value = LibGtk.icon_view_get_model(@pointer.as(LibGtk::IconView*))
      __return_value if __return_value
    end

    def path_at_pos(x, y)
      __return_value = LibGtk.icon_view_get_path_at_pos(@pointer.as(LibGtk::IconView*), Int32.new(x), Int32.new(y))
      Gtk::TreePath.new(__return_value) if __return_value
    end

    def pixbuf_column
      __return_value = LibGtk.icon_view_get_pixbuf_column(@pointer.as(LibGtk::IconView*))
      __return_value
    end

    def reorderable
      __return_value = LibGtk.icon_view_get_reorderable(@pointer.as(LibGtk::IconView*))
      __return_value
    end

    def row_spacing
      __return_value = LibGtk.icon_view_get_row_spacing(@pointer.as(LibGtk::IconView*))
      __return_value
    end

    def selected_items
      __return_value = LibGtk.icon_view_get_selected_items(@pointer.as(LibGtk::IconView*))
      GLib::ListIterator(Gtk::TreePath, LibGtk::TreePath*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def selection_mode
      __return_value = LibGtk.icon_view_get_selection_mode(@pointer.as(LibGtk::IconView*))
      __return_value
    end

    def spacing
      __return_value = LibGtk.icon_view_get_spacing(@pointer.as(LibGtk::IconView*))
      __return_value
    end

    def text_column
      __return_value = LibGtk.icon_view_get_text_column(@pointer.as(LibGtk::IconView*))
      __return_value
    end

    def tooltip_column
      __return_value = LibGtk.icon_view_get_tooltip_column(@pointer.as(LibGtk::IconView*))
      __return_value
    end

    def tooltip_context(x, y, keyboard_tip, model, path, iter)
      __return_value = LibGtk.icon_view_get_tooltip_context(@pointer.as(LibGtk::IconView*), x, y, keyboard_tip, model, path, iter)
      __return_value
    end

    def visible_range(start_path, end_path)
      __return_value = LibGtk.icon_view_get_visible_range(@pointer.as(LibGtk::IconView*), start_path, end_path)
      __return_value
    end

    def item_activated(path)
      LibGtk.icon_view_item_activated(@pointer.as(LibGtk::IconView*), path.to_unsafe.as(LibGtk::TreePath*))
      nil
    end

    def path_is_selected(path)
      __return_value = LibGtk.icon_view_path_is_selected(@pointer.as(LibGtk::IconView*), path.to_unsafe.as(LibGtk::TreePath*))
      __return_value
    end

    def scroll_to_path(path, use_align, row_align, col_align)
      LibGtk.icon_view_scroll_to_path(@pointer.as(LibGtk::IconView*), path.to_unsafe.as(LibGtk::TreePath*), use_align, Float32.new(row_align), Float32.new(col_align))
      nil
    end

    def select_all
      LibGtk.icon_view_select_all(@pointer.as(LibGtk::IconView*))
      nil
    end

    def select_path(path)
      LibGtk.icon_view_select_path(@pointer.as(LibGtk::IconView*), path.to_unsafe.as(LibGtk::TreePath*))
      nil
    end

    def selected_foreach(func, data)
      LibGtk.icon_view_selected_foreach(@pointer.as(LibGtk::IconView*), func, data ? data : nil)
      nil
    end

    def activate_on_single_click=(single)
      LibGtk.icon_view_set_activate_on_single_click(@pointer.as(LibGtk::IconView*), single)
      nil
    end

    def column_spacing=(column_spacing)
      LibGtk.icon_view_set_column_spacing(@pointer.as(LibGtk::IconView*), Int32.new(column_spacing))
      nil
    end

    def columns=(columns)
      LibGtk.icon_view_set_columns(@pointer.as(LibGtk::IconView*), Int32.new(columns))
      nil
    end

    def set_cursor(path, cell, start_editing)
      LibGtk.icon_view_set_cursor(@pointer.as(LibGtk::IconView*), path.to_unsafe.as(LibGtk::TreePath*), cell ? cell.to_unsafe.as(LibGtk::CellRenderer*) : nil, start_editing)
      nil
    end

    def set_drag_dest_item(path, pos : Gtk::IconViewDropPosition)
      LibGtk.icon_view_set_drag_dest_item(@pointer.as(LibGtk::IconView*), path ? path.to_unsafe.as(LibGtk::TreePath*) : nil, pos)
      nil
    end

    def item_orientation=(orientation : Gtk::Orientation)
      LibGtk.icon_view_set_item_orientation(@pointer.as(LibGtk::IconView*), orientation)
      nil
    end

    def item_padding=(item_padding)
      LibGtk.icon_view_set_item_padding(@pointer.as(LibGtk::IconView*), Int32.new(item_padding))
      nil
    end

    def item_width=(item_width)
      LibGtk.icon_view_set_item_width(@pointer.as(LibGtk::IconView*), Int32.new(item_width))
      nil
    end

    def margin=(margin)
      LibGtk.icon_view_set_margin(@pointer.as(LibGtk::IconView*), Int32.new(margin))
      nil
    end

    def markup_column=(column)
      LibGtk.icon_view_set_markup_column(@pointer.as(LibGtk::IconView*), Int32.new(column))
      nil
    end

    def model=(model)
      LibGtk.icon_view_set_model(@pointer.as(LibGtk::IconView*), model ? model.to_unsafe.as(LibGtk::TreeModel*) : nil)
      nil
    end

    def pixbuf_column=(column)
      LibGtk.icon_view_set_pixbuf_column(@pointer.as(LibGtk::IconView*), Int32.new(column))
      nil
    end

    def reorderable=(reorderable)
      LibGtk.icon_view_set_reorderable(@pointer.as(LibGtk::IconView*), reorderable)
      nil
    end

    def row_spacing=(row_spacing)
      LibGtk.icon_view_set_row_spacing(@pointer.as(LibGtk::IconView*), Int32.new(row_spacing))
      nil
    end

    def selection_mode=(mode : Gtk::SelectionMode)
      LibGtk.icon_view_set_selection_mode(@pointer.as(LibGtk::IconView*), mode)
      nil
    end

    def spacing=(spacing)
      LibGtk.icon_view_set_spacing(@pointer.as(LibGtk::IconView*), Int32.new(spacing))
      nil
    end

    def text_column=(column)
      LibGtk.icon_view_set_text_column(@pointer.as(LibGtk::IconView*), Int32.new(column))
      nil
    end

    def set_tooltip_cell(tooltip, path, cell)
      LibGtk.icon_view_set_tooltip_cell(@pointer.as(LibGtk::IconView*), tooltip.to_unsafe.as(LibGtk::Tooltip*), path.to_unsafe.as(LibGtk::TreePath*), cell ? cell.to_unsafe.as(LibGtk::CellRenderer*) : nil)
      nil
    end

    def tooltip_column=(column)
      LibGtk.icon_view_set_tooltip_column(@pointer.as(LibGtk::IconView*), Int32.new(column))
      nil
    end

    def set_tooltip_item(tooltip, path)
      LibGtk.icon_view_set_tooltip_item(@pointer.as(LibGtk::IconView*), tooltip.to_unsafe.as(LibGtk::Tooltip*), path.to_unsafe.as(LibGtk::TreePath*))
      nil
    end

    def unselect_all
      LibGtk.icon_view_unselect_all(@pointer.as(LibGtk::IconView*))
      nil
    end

    def unselect_path(path)
      LibGtk.icon_view_unselect_path(@pointer.as(LibGtk::IconView*), path.to_unsafe.as(LibGtk::TreePath*))
      nil
    end

    def unset_model_drag_dest
      LibGtk.icon_view_unset_model_drag_dest(@pointer.as(LibGtk::IconView*))
      nil
    end

    def unset_model_drag_source
      LibGtk.icon_view_unset_model_drag_source(@pointer.as(LibGtk::IconView*))
      nil
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

