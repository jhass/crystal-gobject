require "./cell_renderer"

module Gtk
  class CellRendererToggle < CellRenderer
    def initialize @gtk_cell_renderer_toggle
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
      __return_value = LibGtk.cell_renderer_toggle_set_activatable((to_unsafe as LibGtk::CellRendererToggle*), Bool.new(setting))
      __return_value
    end

    def active=(setting)
      __return_value = LibGtk.cell_renderer_toggle_set_active((to_unsafe as LibGtk::CellRendererToggle*), Bool.new(setting))
      __return_value
    end

    def radio=(radio)
      __return_value = LibGtk.cell_renderer_toggle_set_radio((to_unsafe as LibGtk::CellRendererToggle*), Bool.new(radio))
      __return_value
    end

  end
end

