require "./cell_renderer_text"

module Gtk
  class CellRendererSpin < CellRendererText
    @gtk_cell_renderer_spin : LibGtk::CellRendererSpin*?
    def initialize(@gtk_cell_renderer_spin : LibGtk::CellRendererSpin*)
    end

    def to_unsafe
      @gtk_cell_renderer_spin.not_nil!
    end




    def self.new : self
      __return_value = LibGtk.cell_renderer_spin_new
      cast Gtk::CellRenderer.new(__return_value)
    end

  end
end

