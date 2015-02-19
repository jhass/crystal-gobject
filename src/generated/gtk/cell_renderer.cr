module Gtk
  class CellRenderer < GObject::InitiallyUnowned
    def initialize @gtk_cell_renderer
    end

    def to_unsafe
      @gtk_cell_renderer.not_nil!
    end

    def cell_background=(__value)
      LibGtk.cell_renderer_set_cell_background((to_unsafe as LibGtk::CellRenderer*), __value)
    end

    def cell_background_gdk=(__value)
      LibGtk.cell_renderer_set_cell_background_gdk((to_unsafe as LibGtk::CellRenderer*), __value)
    end

    def cell_background_rgba=(__value)
      LibGtk.cell_renderer_set_cell_background_rgba((to_unsafe as LibGtk::CellRenderer*), __value)
    end

    def cell_background_set=(__value)
      LibGtk.cell_renderer_set_cell_background_set((to_unsafe as LibGtk::CellRenderer*), Bool.cast(__value))
    end


    def height=(__value)
      LibGtk.cell_renderer_set_height((to_unsafe as LibGtk::CellRenderer*), Int32.cast(__value))
    end

    def is_expanded=(__value)
      LibGtk.cell_renderer_set_is_expanded((to_unsafe as LibGtk::CellRenderer*), Bool.cast(__value))
    end

    def is_expander=(__value)
      LibGtk.cell_renderer_set_is_expander((to_unsafe as LibGtk::CellRenderer*), Bool.cast(__value))
    end

    def mode=(__value)
      LibGtk.cell_renderer_set_mode((to_unsafe as LibGtk::CellRenderer*), __value)
    end

    def sensitive=(__value)
      LibGtk.cell_renderer_set_sensitive((to_unsafe as LibGtk::CellRenderer*), Bool.cast(__value))
    end

    def visible=(__value)
      LibGtk.cell_renderer_set_visible((to_unsafe as LibGtk::CellRenderer*), Bool.cast(__value))
    end

    def width=(__value)
      LibGtk.cell_renderer_set_width((to_unsafe as LibGtk::CellRenderer*), Int32.cast(__value))
    end

    def xalign=(__value)
      LibGtk.cell_renderer_set_xalign((to_unsafe as LibGtk::CellRenderer*), Float32.cast(__value))
    end

    def xpad=(__value)
      LibGtk.cell_renderer_set_xpad((to_unsafe as LibGtk::CellRenderer*), UInt32.cast(__value))
    end

    def yalign=(__value)
      LibGtk.cell_renderer_set_yalign((to_unsafe as LibGtk::CellRenderer*), Float32.cast(__value))
    end

    def ypad=(__value)
      LibGtk.cell_renderer_set_ypad((to_unsafe as LibGtk::CellRenderer*), UInt32.cast(__value))
    end

    def activate(event, widget, path, background_area, cell_area, flags)
      __return_value = LibGtk.cell_renderer_activate((to_unsafe as LibGtk::CellRenderer*), (event.to_unsafe as LibGdk::Event*), (widget.to_unsafe as LibGtk::Widget*), path, (background_area.to_unsafe as LibCairo::RectangleInt*), (cell_area.to_unsafe as LibCairo::RectangleInt*), flags)
      __return_value
    end

    def aligned_area(widget, flags, cell_area, aligned_area)
      __return_value = LibGtk.cell_renderer_get_aligned_area((to_unsafe as LibGtk::CellRenderer*), (widget.to_unsafe as LibGtk::Widget*), flags, (cell_area.to_unsafe as LibCairo::RectangleInt*), aligned_area)
      __return_value
    end

    def alignment(xalign, yalign)
      __return_value = LibGtk.cell_renderer_get_alignment((to_unsafe as LibGtk::CellRenderer*), Float32.cast(xalign), Float32.cast(yalign))
      __return_value
    end

    def fixed_size(width, height)
      __return_value = LibGtk.cell_renderer_get_fixed_size((to_unsafe as LibGtk::CellRenderer*), Int32.cast(width), Int32.cast(height))
      __return_value
    end

    def padding(xpad, ypad)
      __return_value = LibGtk.cell_renderer_get_padding((to_unsafe as LibGtk::CellRenderer*), Int32.cast(xpad), Int32.cast(ypad))
      __return_value
    end

    def preferred_height(widget, minimum_size, natural_size)
      __return_value = LibGtk.cell_renderer_get_preferred_height((to_unsafe as LibGtk::CellRenderer*), (widget.to_unsafe as LibGtk::Widget*), Int32.cast(minimum_size), Int32.cast(natural_size))
      __return_value
    end

    def preferred_height_for_width(widget, width, minimum_height, natural_height)
      __return_value = LibGtk.cell_renderer_get_preferred_height_for_width((to_unsafe as LibGtk::CellRenderer*), (widget.to_unsafe as LibGtk::Widget*), Int32.cast(width), Int32.cast(minimum_height), Int32.cast(natural_height))
      __return_value
    end

    def preferred_size(widget, minimum_size, natural_size)
      __return_value = LibGtk.cell_renderer_get_preferred_size((to_unsafe as LibGtk::CellRenderer*), (widget.to_unsafe as LibGtk::Widget*), minimum_size, natural_size)
      __return_value
    end

    def preferred_width(widget, minimum_size, natural_size)
      __return_value = LibGtk.cell_renderer_get_preferred_width((to_unsafe as LibGtk::CellRenderer*), (widget.to_unsafe as LibGtk::Widget*), Int32.cast(minimum_size), Int32.cast(natural_size))
      __return_value
    end

    def preferred_width_for_height(widget, height, minimum_width, natural_width)
      __return_value = LibGtk.cell_renderer_get_preferred_width_for_height((to_unsafe as LibGtk::CellRenderer*), (widget.to_unsafe as LibGtk::Widget*), Int32.cast(height), Int32.cast(minimum_width), Int32.cast(natural_width))
      __return_value
    end

    def request_mode
      __return_value = LibGtk.cell_renderer_get_request_mode((to_unsafe as LibGtk::CellRenderer*))
      __return_value
    end

    def sensitive
      __return_value = LibGtk.cell_renderer_get_sensitive((to_unsafe as LibGtk::CellRenderer*))
      __return_value
    end

    def size(widget, cell_area, x_offset, y_offset, width, height)
      __return_value = LibGtk.cell_renderer_get_size((to_unsafe as LibGtk::CellRenderer*), (widget.to_unsafe as LibGtk::Widget*), (cell_area.to_unsafe as LibCairo::RectangleInt*), Int32.cast(x_offset), Int32.cast(y_offset), Int32.cast(width), Int32.cast(height))
      __return_value
    end

    def state(widget, cell_state)
      __return_value = LibGtk.cell_renderer_get_state((to_unsafe as LibGtk::CellRenderer*), (widget.to_unsafe as LibGtk::Widget*), cell_state)
      __return_value
    end

    def visible
      __return_value = LibGtk.cell_renderer_get_visible((to_unsafe as LibGtk::CellRenderer*))
      __return_value
    end

    def is_activatable
      __return_value = LibGtk.cell_renderer_is_activatable((to_unsafe as LibGtk::CellRenderer*))
      __return_value
    end

    def render(cr, widget, background_area, cell_area, flags)
      __return_value = LibGtk.cell_renderer_render((to_unsafe as LibGtk::CellRenderer*), (cr.to_unsafe as LibCairo::Context*), (widget.to_unsafe as LibGtk::Widget*), (background_area.to_unsafe as LibCairo::RectangleInt*), (cell_area.to_unsafe as LibCairo::RectangleInt*), flags)
      __return_value
    end

    def alignment=(xalign, yalign)
      __return_value = LibGtk.cell_renderer_set_alignment((to_unsafe as LibGtk::CellRenderer*), Float32.cast(xalign), Float32.cast(yalign))
      __return_value
    end

    def fixed_size=(width, height)
      __return_value = LibGtk.cell_renderer_set_fixed_size((to_unsafe as LibGtk::CellRenderer*), Int32.cast(width), Int32.cast(height))
      __return_value
    end

    def padding=(xpad, ypad)
      __return_value = LibGtk.cell_renderer_set_padding((to_unsafe as LibGtk::CellRenderer*), Int32.cast(xpad), Int32.cast(ypad))
      __return_value
    end

    def sensitive=(sensitive)
      __return_value = LibGtk.cell_renderer_set_sensitive((to_unsafe as LibGtk::CellRenderer*), Bool.cast(sensitive))
      __return_value
    end

    def visible=(visible)
      __return_value = LibGtk.cell_renderer_set_visible((to_unsafe as LibGtk::CellRenderer*), Bool.cast(visible))
      __return_value
    end

    def start_editing(event, widget, path, background_area, cell_area, flags)
      __return_value = LibGtk.cell_renderer_start_editing((to_unsafe as LibGtk::CellRenderer*), (event.to_unsafe as LibGdk::Event*), (widget.to_unsafe as LibGtk::Widget*), path, (background_area.to_unsafe as LibCairo::RectangleInt*), (cell_area.to_unsafe as LibCairo::RectangleInt*), flags)
      __return_value
    end

    def stop_editing(canceled)
      __return_value = LibGtk.cell_renderer_stop_editing((to_unsafe as LibGtk::CellRenderer*), Bool.cast(canceled))
      __return_value
    end

  end
end

