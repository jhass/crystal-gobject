require "./cell_renderer"

module Gtk
  class CellRendererPixbuf < CellRenderer
    @gtk_cell_renderer_pixbuf : LibGtk::CellRendererPixbuf*?
    def initialize(@gtk_cell_renderer_pixbuf : LibGtk::CellRendererPixbuf*)
    end

    def to_unsafe
      @gtk_cell_renderer_pixbuf.not_nil!
    end











    def self.new : self
      __return_value = LibGtk.cell_renderer_pixbuf_new
      cast Gtk::CellRenderer.new(__return_value)
    end

  end
end

