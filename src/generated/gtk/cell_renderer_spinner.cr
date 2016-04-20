require "./cell_renderer"

module Gtk
  class CellRendererSpinner < CellRenderer
    @gtk_cell_renderer_spinner : LibGtk::CellRendererSpinner*?
    def initialize(@gtk_cell_renderer_spinner : LibGtk::CellRendererSpinner*)
    end

    def to_unsafe
      @gtk_cell_renderer_spinner.not_nil!
    end




    def self.new
      __return_value = LibGtk.cell_renderer_spinner_new
      cast Gtk::CellRenderer.new(__return_value)
    end

  end
end

