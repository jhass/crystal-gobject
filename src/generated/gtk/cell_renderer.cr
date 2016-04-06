module Gtk
  class CellRenderer < GObject::InitiallyUnowned
    def initialize(@gtk_cell_renderer)
    end

    def to_unsafe
      @gtk_cell_renderer.not_nil!
    end

















    def activate(event, widget, path, background_area, cell_area, flags)
      __return_value = LibGtk.cell_renderer_activate((to_unsafe as LibGtk::CellRenderer*), (event.to_unsafe as LibGdk::Event*), (widget.to_unsafe as LibGtk::Widget*), path, (background_area.to_unsafe as LibGdk::Rectangle*), (cell_area.to_unsafe as LibGdk::Rectangle*), flags)
      __return_value
    end

    def aligned_area(widget, flags, cell_area, aligned_area)
      __return_value = LibGtk.cell_renderer_get_aligned_area((to_unsafe as LibGtk::CellRenderer*), (widget.to_unsafe as LibGtk::Widget*), flags, (cell_area.to_unsafe as LibGdk::Rectangle*), aligned_area)
      __return_value
    end

    def alignment(xalign, yalign)
      __return_value = LibGtk.cell_renderer_get_alignment((to_unsafe as LibGtk::CellRenderer*), Float32.new(xalign), Float32.new(yalign))
      __return_value
    end

    def fixed_size(width, height)
      __return_value = LibGtk.cell_renderer_get_fixed_size((to_unsafe as LibGtk::CellRenderer*), Int32.new(width), Int32.new(height))
      __return_value
    end

    def padding(xpad, ypad)
      __return_value = LibGtk.cell_renderer_get_padding((to_unsafe as LibGtk::CellRenderer*), Int32.new(xpad), Int32.new(ypad))
      __return_value
    end

    def preferred_height(widget, minimum_size, natural_size)
      __return_value = LibGtk.cell_renderer_get_preferred_height((to_unsafe as LibGtk::CellRenderer*), (widget.to_unsafe as LibGtk::Widget*), Int32.new(minimum_size), Int32.new(natural_size))
      __return_value
    end

    def preferred_height_for_width(widget, width, minimum_height, natural_height)
      __return_value = LibGtk.cell_renderer_get_preferred_height_for_width((to_unsafe as LibGtk::CellRenderer*), (widget.to_unsafe as LibGtk::Widget*), Int32.new(width), Int32.new(minimum_height), Int32.new(natural_height))
      __return_value
    end

    def preferred_size(widget, minimum_size, natural_size)
      __return_value = LibGtk.cell_renderer_get_preferred_size((to_unsafe as LibGtk::CellRenderer*), (widget.to_unsafe as LibGtk::Widget*), minimum_size, natural_size)
      __return_value
    end

    def preferred_width(widget, minimum_size, natural_size)
      __return_value = LibGtk.cell_renderer_get_preferred_width((to_unsafe as LibGtk::CellRenderer*), (widget.to_unsafe as LibGtk::Widget*), Int32.new(minimum_size), Int32.new(natural_size))
      __return_value
    end

    def preferred_width_for_height(widget, height, minimum_width, natural_width)
      __return_value = LibGtk.cell_renderer_get_preferred_width_for_height((to_unsafe as LibGtk::CellRenderer*), (widget.to_unsafe as LibGtk::Widget*), Int32.new(height), Int32.new(minimum_width), Int32.new(natural_width))
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
      __return_value = LibGtk.cell_renderer_get_size((to_unsafe as LibGtk::CellRenderer*), (widget.to_unsafe as LibGtk::Widget*), cell_area && (cell_area.to_unsafe as LibGdk::Rectangle*), Int32.new(x_offset), Int32.new(y_offset), Int32.new(width), Int32.new(height))
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

    def activatable?
      __return_value = LibGtk.cell_renderer_is_activatable((to_unsafe as LibGtk::CellRenderer*))
      __return_value
    end

    def render(cr, widget, background_area, cell_area, flags)
      __return_value = LibGtk.cell_renderer_render((to_unsafe as LibGtk::CellRenderer*), (cr.to_unsafe as LibCairo::Context*), (widget.to_unsafe as LibGtk::Widget*), (background_area.to_unsafe as LibGdk::Rectangle*), (cell_area.to_unsafe as LibGdk::Rectangle*), flags)
      __return_value
    end

    def set_alignment(xalign, yalign)
      __return_value = LibGtk.cell_renderer_set_alignment((to_unsafe as LibGtk::CellRenderer*), Float32.new(xalign), Float32.new(yalign))
      __return_value
    end

    def set_fixed_size(width, height)
      __return_value = LibGtk.cell_renderer_set_fixed_size((to_unsafe as LibGtk::CellRenderer*), Int32.new(width), Int32.new(height))
      __return_value
    end

    def set_padding(xpad, ypad)
      __return_value = LibGtk.cell_renderer_set_padding((to_unsafe as LibGtk::CellRenderer*), Int32.new(xpad), Int32.new(ypad))
      __return_value
    end

    def sensitive=(sensitive)
      __return_value = LibGtk.cell_renderer_set_sensitive((to_unsafe as LibGtk::CellRenderer*), sensitive)
      __return_value
    end

    def visible=(visible)
      __return_value = LibGtk.cell_renderer_set_visible((to_unsafe as LibGtk::CellRenderer*), visible)
      __return_value
    end

    def start_editing(event, widget, path, background_area, cell_area, flags)
      __return_value = LibGtk.cell_renderer_start_editing((to_unsafe as LibGtk::CellRenderer*), (event.to_unsafe as LibGdk::Event*), (widget.to_unsafe as LibGtk::Widget*), path, (background_area.to_unsafe as LibGdk::Rectangle*), (cell_area.to_unsafe as LibGdk::Rectangle*), flags)
      __return_value
    end

    def stop_editing(canceled)
      __return_value = LibGtk.cell_renderer_stop_editing((to_unsafe as LibGtk::CellRenderer*), canceled)
      __return_value
    end

    alias EditingCanceledSignal = CellRenderer -> 
    def on_editing_canceled(&__block : EditingCanceledSignal)
      __callback = ->(_arg0 : LibGtk::CellRenderer*) {
       __return_value = __block.call(CellRenderer.new(_arg0))
       __return_value
      }
      connect("editing-canceled", __callback)
    end

    alias EditingStartedSignal = CellRenderer, Gtk::CellEditable, UInt8 -> 
    def on_editing_started(&__block : EditingStartedSignal)
      __callback = ->(_arg0 : LibGtk::CellRenderer*, _arg1 : LibGtk::LibGtk::CellEditable*, _arg2 : LibGtk::UInt8**) {
       __return_value = __block.call(CellRenderer.new(_arg0), _arg1, (raise "Expected string but got null" unless _arg2; String.new(_arg2)))
       __return_value
      }
      connect("editing-started", __callback)
    end

  end
end

