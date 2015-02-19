module Gtk
  class CellArea < GObject::InitiallyUnowned
    def initialize @gtk_cell_area
    end

    def to_unsafe
      @gtk_cell_area.not_nil!
    end

    # Implements Buildable
    # Implements CellLayout



    def activate(context, widget, cell_area, flags, edit_only)
      __return_value = LibGtk.cell_area_activate((to_unsafe as LibGtk::CellArea*), (context.to_unsafe as LibGtk::CellAreaContext*), (widget.to_unsafe as LibGtk::Widget*), (cell_area.to_unsafe as LibCairo::RectangleInt*), flags, Bool.cast(edit_only))
      __return_value
    end

    def activate_cell(widget, renderer, event, cell_area, flags)
      __return_value = LibGtk.cell_area_activate_cell((to_unsafe as LibGtk::CellArea*), (widget.to_unsafe as LibGtk::Widget*), (renderer.to_unsafe as LibGtk::CellRenderer*), (event.to_unsafe as LibGdk::Event*), (cell_area.to_unsafe as LibCairo::RectangleInt*), flags)
      __return_value
    end

    def add(renderer)
      __return_value = LibGtk.cell_area_add((to_unsafe as LibGtk::CellArea*), (renderer.to_unsafe as LibGtk::CellRenderer*))
      __return_value
    end

    def add_focus_sibling(renderer, sibling)
      __return_value = LibGtk.cell_area_add_focus_sibling((to_unsafe as LibGtk::CellArea*), (renderer.to_unsafe as LibGtk::CellRenderer*), (sibling.to_unsafe as LibGtk::CellRenderer*))
      __return_value
    end

    def apply_attributes(tree_model, iter, is_expander, is_expanded)
      __return_value = LibGtk.cell_area_apply_attributes((to_unsafe as LibGtk::CellArea*), (tree_model.to_unsafe as LibGtk::TreeModel*), (iter.to_unsafe as LibGtk::TreeIter*), Bool.cast(is_expander), Bool.cast(is_expanded))
      __return_value
    end

    def attribute_connect(renderer, attribute, column)
      __return_value = LibGtk.cell_area_attribute_connect((to_unsafe as LibGtk::CellArea*), (renderer.to_unsafe as LibGtk::CellRenderer*), attribute, Int32.cast(column))
      __return_value
    end

    def attribute_disconnect(renderer, attribute)
      __return_value = LibGtk.cell_area_attribute_disconnect((to_unsafe as LibGtk::CellArea*), (renderer.to_unsafe as LibGtk::CellRenderer*), attribute)
      __return_value
    end

    def attribute_get_column(renderer, attribute)
      __return_value = LibGtk.cell_area_attribute_get_column((to_unsafe as LibGtk::CellArea*), (renderer.to_unsafe as LibGtk::CellRenderer*), attribute)
      __return_value
    end

    def cell_get_property(renderer, property_name, value)
      __return_value = LibGtk.cell_area_cell_get_property((to_unsafe as LibGtk::CellArea*), (renderer.to_unsafe as LibGtk::CellRenderer*), property_name, (value.to_unsafe as LibGObject::Value*))
      __return_value
    end

    def cell_set_property(renderer, property_name, value)
      __return_value = LibGtk.cell_area_cell_set_property((to_unsafe as LibGtk::CellArea*), (renderer.to_unsafe as LibGtk::CellRenderer*), property_name, (value.to_unsafe as LibGObject::Value*))
      __return_value
    end

    def copy_context(context)
      __return_value = LibGtk.cell_area_copy_context((to_unsafe as LibGtk::CellArea*), (context.to_unsafe as LibGtk::CellAreaContext*))
      Gtk::CellAreaContext.new(__return_value)
    end

    def create_context
      __return_value = LibGtk.cell_area_create_context((to_unsafe as LibGtk::CellArea*))
      Gtk::CellAreaContext.new(__return_value)
    end

    def event(context, widget, event, cell_area, flags)
      __return_value = LibGtk.cell_area_event((to_unsafe as LibGtk::CellArea*), (context.to_unsafe as LibGtk::CellAreaContext*), (widget.to_unsafe as LibGtk::Widget*), (event.to_unsafe as LibGdk::Event*), (cell_area.to_unsafe as LibCairo::RectangleInt*), flags)
      __return_value
    end

    def focus(direction)
      __return_value = LibGtk.cell_area_focus((to_unsafe as LibGtk::CellArea*), direction)
      __return_value
    end

    def foreach(callback, callback_data)
      __return_value = LibGtk.cell_area_foreach((to_unsafe as LibGtk::CellArea*), callback, callback_data)
      __return_value
    end

    def foreach_alloc(context, widget, cell_area, background_area, callback, callback_data)
      __return_value = LibGtk.cell_area_foreach_alloc((to_unsafe as LibGtk::CellArea*), (context.to_unsafe as LibGtk::CellAreaContext*), (widget.to_unsafe as LibGtk::Widget*), (cell_area.to_unsafe as LibCairo::RectangleInt*), (background_area.to_unsafe as LibCairo::RectangleInt*), callback, callback_data)
      __return_value
    end

    def cell_allocation(context, widget, renderer, cell_area, allocation)
      __return_value = LibGtk.cell_area_get_cell_allocation((to_unsafe as LibGtk::CellArea*), (context.to_unsafe as LibGtk::CellAreaContext*), (widget.to_unsafe as LibGtk::Widget*), (renderer.to_unsafe as LibGtk::CellRenderer*), (cell_area.to_unsafe as LibCairo::RectangleInt*), allocation)
      __return_value
    end

    def cell_at_position(context, widget, cell_area, x, y, alloc_area)
      __return_value = LibGtk.cell_area_get_cell_at_position((to_unsafe as LibGtk::CellArea*), (context.to_unsafe as LibGtk::CellAreaContext*), (widget.to_unsafe as LibGtk::Widget*), (cell_area.to_unsafe as LibCairo::RectangleInt*), Int32.cast(x), Int32.cast(y), alloc_area)
      Gtk::CellRenderer.new(__return_value)
    end

    def current_path_string
      __return_value = LibGtk.cell_area_get_current_path_string((to_unsafe as LibGtk::CellArea*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def edit_widget
      __return_value = LibGtk.cell_area_get_edit_widget((to_unsafe as LibGtk::CellArea*))
      __return_value
    end

    def edited_cell
      __return_value = LibGtk.cell_area_get_edited_cell((to_unsafe as LibGtk::CellArea*))
      Gtk::CellRenderer.new(__return_value)
    end

    def focus_cell
      __return_value = LibGtk.cell_area_get_focus_cell((to_unsafe as LibGtk::CellArea*))
      Gtk::CellRenderer.new(__return_value)
    end

    def focus_from_sibling(renderer)
      __return_value = LibGtk.cell_area_get_focus_from_sibling((to_unsafe as LibGtk::CellArea*), (renderer.to_unsafe as LibGtk::CellRenderer*))
      Gtk::CellRenderer.new(__return_value)
    end

    def focus_siblings(renderer)
      __return_value = LibGtk.cell_area_get_focus_siblings((to_unsafe as LibGtk::CellArea*), (renderer.to_unsafe as LibGtk::CellRenderer*))
      __return_value
    end

    def preferred_height(context, widget, minimum_height, natural_height)
      __return_value = LibGtk.cell_area_get_preferred_height((to_unsafe as LibGtk::CellArea*), (context.to_unsafe as LibGtk::CellAreaContext*), (widget.to_unsafe as LibGtk::Widget*), Int32.cast(minimum_height), Int32.cast(natural_height))
      __return_value
    end

    def preferred_height_for_width(context, widget, width, minimum_height, natural_height)
      __return_value = LibGtk.cell_area_get_preferred_height_for_width((to_unsafe as LibGtk::CellArea*), (context.to_unsafe as LibGtk::CellAreaContext*), (widget.to_unsafe as LibGtk::Widget*), Int32.cast(width), Int32.cast(minimum_height), Int32.cast(natural_height))
      __return_value
    end

    def preferred_width(context, widget, minimum_width, natural_width)
      __return_value = LibGtk.cell_area_get_preferred_width((to_unsafe as LibGtk::CellArea*), (context.to_unsafe as LibGtk::CellAreaContext*), (widget.to_unsafe as LibGtk::Widget*), Int32.cast(minimum_width), Int32.cast(natural_width))
      __return_value
    end

    def preferred_width_for_height(context, widget, height, minimum_width, natural_width)
      __return_value = LibGtk.cell_area_get_preferred_width_for_height((to_unsafe as LibGtk::CellArea*), (context.to_unsafe as LibGtk::CellAreaContext*), (widget.to_unsafe as LibGtk::Widget*), Int32.cast(height), Int32.cast(minimum_width), Int32.cast(natural_width))
      __return_value
    end

    def request_mode
      __return_value = LibGtk.cell_area_get_request_mode((to_unsafe as LibGtk::CellArea*))
      __return_value
    end

    def has_renderer(renderer)
      __return_value = LibGtk.cell_area_has_renderer((to_unsafe as LibGtk::CellArea*), (renderer.to_unsafe as LibGtk::CellRenderer*))
      __return_value
    end

    def inner_cell_area(widget, cell_area, inner_area)
      __return_value = LibGtk.cell_area_inner_cell_area((to_unsafe as LibGtk::CellArea*), (widget.to_unsafe as LibGtk::Widget*), (cell_area.to_unsafe as LibCairo::RectangleInt*), inner_area)
      __return_value
    end

    def is_activatable
      __return_value = LibGtk.cell_area_is_activatable((to_unsafe as LibGtk::CellArea*))
      __return_value
    end

    def is_focus_sibling(renderer, sibling)
      __return_value = LibGtk.cell_area_is_focus_sibling((to_unsafe as LibGtk::CellArea*), (renderer.to_unsafe as LibGtk::CellRenderer*), (sibling.to_unsafe as LibGtk::CellRenderer*))
      __return_value
    end

    def remove(renderer)
      __return_value = LibGtk.cell_area_remove((to_unsafe as LibGtk::CellArea*), (renderer.to_unsafe as LibGtk::CellRenderer*))
      __return_value
    end

    def remove_focus_sibling(renderer, sibling)
      __return_value = LibGtk.cell_area_remove_focus_sibling((to_unsafe as LibGtk::CellArea*), (renderer.to_unsafe as LibGtk::CellRenderer*), (sibling.to_unsafe as LibGtk::CellRenderer*))
      __return_value
    end

    def render(context, widget, cr, background_area, cell_area, flags, paint_focus)
      __return_value = LibGtk.cell_area_render((to_unsafe as LibGtk::CellArea*), (context.to_unsafe as LibGtk::CellAreaContext*), (widget.to_unsafe as LibGtk::Widget*), (cr.to_unsafe as LibCairo::Context*), (background_area.to_unsafe as LibCairo::RectangleInt*), (cell_area.to_unsafe as LibCairo::RectangleInt*), flags, Bool.cast(paint_focus))
      __return_value
    end

    def request_renderer(renderer, orientation, widget, for_size, minimum_size, natural_size)
      __return_value = LibGtk.cell_area_request_renderer((to_unsafe as LibGtk::CellArea*), (renderer.to_unsafe as LibGtk::CellRenderer*), orientation, (widget.to_unsafe as LibGtk::Widget*), Int32.cast(for_size), Int32.cast(minimum_size), Int32.cast(natural_size))
      __return_value
    end

    def focus_cell=(renderer)
      __return_value = LibGtk.cell_area_set_focus_cell((to_unsafe as LibGtk::CellArea*), (renderer.to_unsafe as LibGtk::CellRenderer*))
      __return_value
    end

    def stop_editing(canceled)
      __return_value = LibGtk.cell_area_stop_editing((to_unsafe as LibGtk::CellArea*), Bool.cast(canceled))
      __return_value
    end

  end
end

