require "./cell_renderer"

module Gtk
  class CellRendererProgress < CellRenderer
    def initialize @gtk_cell_renderer_progress
    end

    def to_unsafe
      @gtk_cell_renderer_progress.not_nil!
    end

    # Implements Orientable
    def inverted=(__value)
      LibGtk.cell_renderer_progress_set_inverted((to_unsafe as LibGtk::CellRendererProgress*), Bool.cast(__value))
    end

    def pulse=(__value)
      LibGtk.cell_renderer_progress_set_pulse((to_unsafe as LibGtk::CellRendererProgress*), Int32.cast(__value))
    end

    def text=(__value)
      LibGtk.cell_renderer_progress_set_text((to_unsafe as LibGtk::CellRendererProgress*), __value)
    end

    def text_xalign=(__value)
      LibGtk.cell_renderer_progress_set_text_xalign((to_unsafe as LibGtk::CellRendererProgress*), Float32.cast(__value))
    end

    def text_yalign=(__value)
      LibGtk.cell_renderer_progress_set_text_yalign((to_unsafe as LibGtk::CellRendererProgress*), Float32.cast(__value))
    end

    def value=(__value)
      LibGtk.cell_renderer_progress_set_value((to_unsafe as LibGtk::CellRendererProgress*), Int32.cast(__value))
    end

    def self.new_internal
      __return_value = LibGtk.cell_renderer_progress_new
      Gtk::CellRenderer.new(__return_value)
    end

  end
end

