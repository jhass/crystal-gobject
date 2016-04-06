require "./cell_renderer"

module Gtk
  class CellRendererSpinner < CellRenderer
    def initialize(@gtk_cell_renderer_spinner)
    end

    def to_unsafe
      @gtk_cell_renderer_spinner.not_nil!
    end




    def self.new_internal
      __return_value = LibGtk.cell_renderer_spinner_new
      Gtk::CellRenderer.new(__return_value)
    end

  end
end

