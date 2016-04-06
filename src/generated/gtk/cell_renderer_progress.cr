require "./cell_renderer"

module Gtk
  class CellRendererProgress < CellRenderer
    def initialize(@gtk_cell_renderer_progress)
    end

    def to_unsafe
      @gtk_cell_renderer_progress.not_nil!
    end

    # Implements Orientable






    def self.new_internal
      __return_value = LibGtk.cell_renderer_progress_new
      Gtk::CellRenderer.new(__return_value)
    end

  end
end

