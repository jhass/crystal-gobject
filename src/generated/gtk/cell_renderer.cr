module Gtk
  class CellRenderer < GObject::InitiallyUnowned
    @pointer : Void*
    def initialize(pointer : LibGtk::CellRenderer*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::CellRenderer*)
    end


    def cell_background_gdk
      __return_value = LibGtk.cell_renderer_get_cell_background_gdk(to_unsafe.as(LibGtk::CellRenderer*))
      Gdk::Color.new(__return_value)
    end

    def cell_background_rgba
      __return_value = LibGtk.cell_renderer_get_cell_background_rgba(to_unsafe.as(LibGtk::CellRenderer*))
      Gdk::RGBA.new(__return_value)
    end

    def cell_background_set
      __return_value = LibGtk.cell_renderer_get_cell_background_set(to_unsafe.as(LibGtk::CellRenderer*))
      __return_value
    end

    def editing
      __return_value = LibGtk.cell_renderer_get_editing(to_unsafe.as(LibGtk::CellRenderer*))
      __return_value
    end

    def height
      __return_value = LibGtk.cell_renderer_get_height(to_unsafe.as(LibGtk::CellRenderer*))
      __return_value
    end

    def is_expanded
      __return_value = LibGtk.cell_renderer_get_is_expanded(to_unsafe.as(LibGtk::CellRenderer*))
      __return_value
    end

    def is_expander
      __return_value = LibGtk.cell_renderer_get_is_expander(to_unsafe.as(LibGtk::CellRenderer*))
      __return_value
    end

    def mode
      __return_value = LibGtk.cell_renderer_get_mode(to_unsafe.as(LibGtk::CellRenderer*))
      __return_value
    end

    def sensitive
      __return_value = LibGtk.cell_renderer_get_sensitive(to_unsafe.as(LibGtk::CellRenderer*))
      __return_value
    end

    def visible
      __return_value = LibGtk.cell_renderer_get_visible(to_unsafe.as(LibGtk::CellRenderer*))
      __return_value
    end

    def width
      __return_value = LibGtk.cell_renderer_get_width(to_unsafe.as(LibGtk::CellRenderer*))
      __return_value
    end

    def xalign
      __return_value = LibGtk.cell_renderer_get_xalign(to_unsafe.as(LibGtk::CellRenderer*))
      __return_value
    end

    def xpad
      __return_value = LibGtk.cell_renderer_get_xpad(to_unsafe.as(LibGtk::CellRenderer*))
      __return_value
    end

    def yalign
      __return_value = LibGtk.cell_renderer_get_yalign(to_unsafe.as(LibGtk::CellRenderer*))
      __return_value
    end

    def ypad
      __return_value = LibGtk.cell_renderer_get_ypad(to_unsafe.as(LibGtk::CellRenderer*))
      __return_value
    end

    def activate(event, widget, path, background_area, cell_area, flags : Gtk::CellRendererState)
      __return_value = LibGtk.cell_renderer_activate(@pointer.as(LibGtk::CellRenderer*), event.to_unsafe.as(LibGdk::Event*), widget.to_unsafe.as(LibGtk::Widget*), path.to_unsafe, background_area.to_unsafe.as(LibGdk::Rectangle*), cell_area.to_unsafe.as(LibGdk::Rectangle*), flags)
      __return_value
    end

    def aligned_area(widget, flags : Gtk::CellRendererState, cell_area, aligned_area)
      LibGtk.cell_renderer_get_aligned_area(@pointer.as(LibGtk::CellRenderer*), widget.to_unsafe.as(LibGtk::Widget*), flags, cell_area.to_unsafe.as(LibGdk::Rectangle*), aligned_area)
      nil
    end

    def alignment(xalign, yalign)
      LibGtk.cell_renderer_get_alignment(@pointer.as(LibGtk::CellRenderer*), xalign, yalign)
      nil
    end

    def fixed_size(width, height)
      LibGtk.cell_renderer_get_fixed_size(@pointer.as(LibGtk::CellRenderer*), width, height)
      nil
    end

    def padding(xpad, ypad)
      LibGtk.cell_renderer_get_padding(@pointer.as(LibGtk::CellRenderer*), xpad, ypad)
      nil
    end

    def preferred_height(widget, minimum_size, natural_size)
      LibGtk.cell_renderer_get_preferred_height(@pointer.as(LibGtk::CellRenderer*), widget.to_unsafe.as(LibGtk::Widget*), minimum_size, natural_size)
      nil
    end

    def preferred_height_for_width(widget, width, minimum_height, natural_height)
      LibGtk.cell_renderer_get_preferred_height_for_width(@pointer.as(LibGtk::CellRenderer*), widget.to_unsafe.as(LibGtk::Widget*), Int32.new(width), minimum_height, natural_height)
      nil
    end

    def preferred_size(widget, minimum_size, natural_size)
      LibGtk.cell_renderer_get_preferred_size(@pointer.as(LibGtk::CellRenderer*), widget.to_unsafe.as(LibGtk::Widget*), minimum_size, natural_size)
      nil
    end

    def preferred_width(widget, minimum_size, natural_size)
      LibGtk.cell_renderer_get_preferred_width(@pointer.as(LibGtk::CellRenderer*), widget.to_unsafe.as(LibGtk::Widget*), minimum_size, natural_size)
      nil
    end

    def preferred_width_for_height(widget, height, minimum_width, natural_width)
      LibGtk.cell_renderer_get_preferred_width_for_height(@pointer.as(LibGtk::CellRenderer*), widget.to_unsafe.as(LibGtk::Widget*), Int32.new(height), minimum_width, natural_width)
      nil
    end

    def request_mode
      __return_value = LibGtk.cell_renderer_get_request_mode(@pointer.as(LibGtk::CellRenderer*))
      __return_value
    end

    def sensitive
      __return_value = LibGtk.cell_renderer_get_sensitive(@pointer.as(LibGtk::CellRenderer*))
      __return_value
    end

    def size(widget, cell_area, x_offset, y_offset, width, height)
      LibGtk.cell_renderer_get_size(@pointer.as(LibGtk::CellRenderer*), widget.to_unsafe.as(LibGtk::Widget*), cell_area ? cell_area.to_unsafe.as(LibGdk::Rectangle*) : nil, x_offset, y_offset, width, height)
      nil
    end

    def state(widget, cell_state : Gtk::CellRendererState)
      __return_value = LibGtk.cell_renderer_get_state(@pointer.as(LibGtk::CellRenderer*), widget ? widget.to_unsafe.as(LibGtk::Widget*) : nil, cell_state)
      __return_value
    end

    def visible
      __return_value = LibGtk.cell_renderer_get_visible(@pointer.as(LibGtk::CellRenderer*))
      __return_value
    end

    def activatable?
      __return_value = LibGtk.cell_renderer_is_activatable(@pointer.as(LibGtk::CellRenderer*))
      __return_value
    end

    def render(cr, widget, background_area, cell_area, flags : Gtk::CellRendererState)
      LibGtk.cell_renderer_render(@pointer.as(LibGtk::CellRenderer*), cr.to_unsafe.as(LibCairo::Context*), widget.to_unsafe.as(LibGtk::Widget*), background_area.to_unsafe.as(LibGdk::Rectangle*), cell_area.to_unsafe.as(LibGdk::Rectangle*), flags)
      nil
    end

    def set_alignment(xalign, yalign)
      LibGtk.cell_renderer_set_alignment(@pointer.as(LibGtk::CellRenderer*), Float32.new(xalign), Float32.new(yalign))
      nil
    end

    def set_fixed_size(width, height)
      LibGtk.cell_renderer_set_fixed_size(@pointer.as(LibGtk::CellRenderer*), Int32.new(width), Int32.new(height))
      nil
    end

    def set_padding(xpad, ypad)
      LibGtk.cell_renderer_set_padding(@pointer.as(LibGtk::CellRenderer*), Int32.new(xpad), Int32.new(ypad))
      nil
    end

    def sensitive=(sensitive)
      LibGtk.cell_renderer_set_sensitive(@pointer.as(LibGtk::CellRenderer*), sensitive)
      nil
    end

    def visible=(visible)
      LibGtk.cell_renderer_set_visible(@pointer.as(LibGtk::CellRenderer*), visible)
      nil
    end

    def start_editing(event, widget, path, background_area, cell_area, flags : Gtk::CellRendererState)
      __return_value = LibGtk.cell_renderer_start_editing(@pointer.as(LibGtk::CellRenderer*), event ? event.to_unsafe.as(LibGdk::Event*) : nil, widget.to_unsafe.as(LibGtk::Widget*), path.to_unsafe, background_area.to_unsafe.as(LibGdk::Rectangle*), cell_area.to_unsafe.as(LibGdk::Rectangle*), flags)
      __return_value if __return_value
    end

    def stop_editing(canceled)
      LibGtk.cell_renderer_stop_editing(@pointer.as(LibGtk::CellRenderer*), canceled)
      nil
    end

    alias EditingCanceledSignal = CellRenderer ->
    def on_editing_canceled(&__block : EditingCanceledSignal)
      __callback = ->(_arg0 : LibGtk::CellRenderer*) {
       __return_value = __block.call(CellRenderer.new(_arg0))
       __return_value
      }
      connect("editing-canceled", __callback)
    end

    alias EditingStartedSignal = CellRenderer, Gtk::CellEditable, String ->
    def on_editing_started(&__block : EditingStartedSignal)
      __callback = ->(_arg0 : LibGtk::CellRenderer*, _arg1 : LibGtk::LibGtk::CellEditable*, _arg2 : LibGtk::UInt8**) {
       __return_value = __block.call(CellRenderer.new(_arg0), _arg1, (raise "Expected string but got null" unless _arg2; ::String.new(_arg2)))
       __return_value
      }
      connect("editing-started", __callback)
    end

  end
end

