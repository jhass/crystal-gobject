require "./cell_renderer"

module Gtk
  class CellRendererProgress < CellRenderer
    @gtk_cell_renderer_progress : LibGtk::CellRendererProgress*?
    def initialize(@gtk_cell_renderer_progress : LibGtk::CellRendererProgress*)
    end

    def to_unsafe
      @gtk_cell_renderer_progress.not_nil!
    end

    # Implements Orientable
    def inverted
      __return_value = LibGtk.cell_renderer_progress_get_inverted(to_unsafe.as(LibGtk::CellRendererProgress*))
      __return_value
    end

    def pulse
      __return_value = LibGtk.cell_renderer_progress_get_pulse(to_unsafe.as(LibGtk::CellRendererProgress*))
      __return_value
    end

    def text
      __return_value = LibGtk.cell_renderer_progress_get_text(to_unsafe.as(LibGtk::CellRendererProgress*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def text_xalign
      __return_value = LibGtk.cell_renderer_progress_get_text_xalign(to_unsafe.as(LibGtk::CellRendererProgress*))
      __return_value
    end

    def text_yalign
      __return_value = LibGtk.cell_renderer_progress_get_text_yalign(to_unsafe.as(LibGtk::CellRendererProgress*))
      __return_value
    end

    def value
      __return_value = LibGtk.cell_renderer_progress_get_value(to_unsafe.as(LibGtk::CellRendererProgress*))
      __return_value
    end

    def self.new : self
      __return_value = LibGtk.cell_renderer_progress_new
      cast Gtk::CellRenderer.new(__return_value)
    end

  end
end

