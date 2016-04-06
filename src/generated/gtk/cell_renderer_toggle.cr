require "./cell_renderer"

module Gtk
  class CellRendererToggle < CellRenderer
    def initialize(@gtk_cell_renderer_toggle)
    end

    def to_unsafe
      @gtk_cell_renderer_toggle.not_nil!
    end






    def self.new_internal
      __return_value = LibGtk.cell_renderer_toggle_new
      Gtk::CellRenderer.new(__return_value)
    end

    def activatable
      __return_value = LibGtk.cell_renderer_toggle_get_activatable((to_unsafe as LibGtk::CellRendererToggle*))
      __return_value
    end

    def active
      __return_value = LibGtk.cell_renderer_toggle_get_active((to_unsafe as LibGtk::CellRendererToggle*))
      __return_value
    end

    def radio
      __return_value = LibGtk.cell_renderer_toggle_get_radio((to_unsafe as LibGtk::CellRendererToggle*))
      __return_value
    end

    def activatable=(setting)
      __return_value = LibGtk.cell_renderer_toggle_set_activatable((to_unsafe as LibGtk::CellRendererToggle*), setting)
      __return_value
    end

    def active=(setting)
      __return_value = LibGtk.cell_renderer_toggle_set_active((to_unsafe as LibGtk::CellRendererToggle*), setting)
      __return_value
    end

    def radio=(radio)
      __return_value = LibGtk.cell_renderer_toggle_set_radio((to_unsafe as LibGtk::CellRendererToggle*), radio)
      __return_value
    end

    alias ToggledSignal = CellRendererToggle, UInt8 -> 
    def on_toggled(&__block : ToggledSignal)
      __callback = ->(_arg0 : LibGtk::CellRendererToggle*, _arg1 : LibGtk::UInt8**) {
       __return_value = __block.call(CellRendererToggle.new(_arg0), (raise "Expected string but got null" unless _arg1; String.new(_arg1)))
       __return_value
      }
      connect("toggled", __callback)
    end

  end
end

