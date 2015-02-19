require "./cell_renderer"

module Gtk
  class CellRendererSpinner < CellRenderer
    def initialize @gtk_cell_renderer_spinner
    end

    def to_unsafe
      @gtk_cell_renderer_spinner.not_nil!
    end

    def active=(__value)
      LibGtk.cell_renderer_spinner_set_active((to_unsafe as LibGtk::CellRendererSpinner*), Bool.cast(__value))
    end

    def pulse=(__value)
      LibGtk.cell_renderer_spinner_set_pulse((to_unsafe as LibGtk::CellRendererSpinner*), UInt32.cast(__value))
    end

    def size=(__value)
      LibGtk.cell_renderer_spinner_set_size((to_unsafe as LibGtk::CellRendererSpinner*), __value)
    end

    def self.new_internal
      __return_value = LibGtk.cell_renderer_spinner_new
      Gtk::CellRenderer.new(__return_value)
    end

  end
end

