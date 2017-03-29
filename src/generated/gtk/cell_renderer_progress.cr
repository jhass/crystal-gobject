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






    def self.new : self
      __return_value = LibGtk.cell_renderer_progress_new
      cast Gtk::CellRenderer.new(__return_value)
    end

  end
end

