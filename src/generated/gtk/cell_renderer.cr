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
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "cell_background_gdk", gvalue)
      Gdk::Color.cast(gvalue.object)
    end

    def cell_background_rgba
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "cell_background_rgba", gvalue)
      Gdk::RGBA.cast(gvalue.object)
    end

    def cell_background_set
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "cell_background_set", gvalue)
      gvalue.boolean
    end

    def editing
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "editing", gvalue)
      gvalue.boolean
    end

    def height
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "height", gvalue)
      gvalue
    end

    def is_expanded
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "is_expanded", gvalue)
      gvalue.boolean
    end

    def is_expander
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "is_expander", gvalue)
      gvalue.boolean
    end

    def mode
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "mode", gvalue)
      gvalue.enum
    end

    def sensitive
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "sensitive", gvalue)
      gvalue.boolean
    end

    def visible
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "visible", gvalue)
      gvalue.boolean
    end

    def width
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "width", gvalue)
      gvalue
    end

    def xalign
      gvalue = GObject::Value.new(GObject::Type::FLOAT)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "xalign", gvalue)
      gvalue
    end

    def xpad
      gvalue = GObject::Value.new(GObject::Type::UINT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "xpad", gvalue)
      gvalue
    end

    def yalign
      gvalue = GObject::Value.new(GObject::Type::FLOAT)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "yalign", gvalue)
      gvalue
    end

    def ypad
      gvalue = GObject::Value.new(GObject::Type::UINT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "ypad", gvalue)
      gvalue
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

