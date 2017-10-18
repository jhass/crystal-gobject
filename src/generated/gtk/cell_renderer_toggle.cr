require "./cell_renderer"

module Gtk
  class CellRendererToggle < CellRenderer
    @gtk_cell_renderer_toggle : LibGtk::CellRendererToggle*?
    def initialize(@gtk_cell_renderer_toggle : LibGtk::CellRendererToggle*)
    end

    def to_unsafe
      @gtk_cell_renderer_toggle.not_nil!
    end

    def activatable
      __return_value = LibGtk.cell_renderer_toggle_get_activatable(to_unsafe.as(LibGtk::CellRendererToggle*))
      __return_value
    end

    def active
      __return_value = LibGtk.cell_renderer_toggle_get_active(to_unsafe.as(LibGtk::CellRendererToggle*))
      __return_value
    end

    def inconsistent
      __return_value = LibGtk.cell_renderer_toggle_get_inconsistent(to_unsafe.as(LibGtk::CellRendererToggle*))
      __return_value
    end

    def indicator_size
      __return_value = LibGtk.cell_renderer_toggle_get_indicator_size(to_unsafe.as(LibGtk::CellRendererToggle*))
      __return_value
    end

    def radio
      __return_value = LibGtk.cell_renderer_toggle_get_radio(to_unsafe.as(LibGtk::CellRendererToggle*))
      __return_value
    end

    def self.new : self
      __return_value = LibGtk.cell_renderer_toggle_new
      cast Gtk::CellRenderer.new(__return_value)
    end

    def activatable
      __return_value = LibGtk.cell_renderer_toggle_get_activatable(to_unsafe.as(LibGtk::CellRendererToggle*))
      __return_value
    end

    def active
      __return_value = LibGtk.cell_renderer_toggle_get_active(to_unsafe.as(LibGtk::CellRendererToggle*))
      __return_value
    end

    def radio
      __return_value = LibGtk.cell_renderer_toggle_get_radio(to_unsafe.as(LibGtk::CellRendererToggle*))
      __return_value
    end

    def activatable=(setting)
      LibGtk.cell_renderer_toggle_set_activatable(to_unsafe.as(LibGtk::CellRendererToggle*), setting)
      nil
    end

    def active=(setting)
      LibGtk.cell_renderer_toggle_set_active(to_unsafe.as(LibGtk::CellRendererToggle*), setting)
      nil
    end

    def radio=(radio)
      LibGtk.cell_renderer_toggle_set_radio(to_unsafe.as(LibGtk::CellRendererToggle*), radio)
      nil
    end

    alias ToggledSignal = CellRendererToggle, String ->
    def on_toggled(&__block : ToggledSignal)
      __callback = ->(_arg0 : LibGtk::CellRendererToggle*, _arg1 : LibGtk::UInt8**) {
       __return_value = __block.call(CellRendererToggle.new(_arg0), (raise "Expected string but got null" unless _arg1; ::String.new(_arg1)))
       __return_value
      }
      connect("toggled", __callback)
    end

  end
end

