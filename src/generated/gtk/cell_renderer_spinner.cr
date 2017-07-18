require "./cell_renderer"

module Gtk
  class CellRendererSpinner < CellRenderer
    @gtk_cell_renderer_spinner : LibGtk::CellRendererSpinner*?
    def initialize(@gtk_cell_renderer_spinner : LibGtk::CellRendererSpinner*)
    end

    def to_unsafe
      @gtk_cell_renderer_spinner.not_nil!
    end

    def active
      __return_value = LibGtk.cell_renderer_spinner_get_active(to_unsafe.as(LibGtk::CellRendererSpinner*))
      __return_value
    end

    def pulse
      __return_value = LibGtk.cell_renderer_spinner_get_pulse(to_unsafe.as(LibGtk::CellRendererSpinner*))
      __return_value
    end

    def size
      __return_value = LibGtk.cell_renderer_spinner_get_size(to_unsafe.as(LibGtk::CellRendererSpinner*))
      __return_value
    end

    def self.new : self
      __return_value = LibGtk.cell_renderer_spinner_new
      cast Gtk::CellRenderer.new(__return_value)
    end

  end
end

