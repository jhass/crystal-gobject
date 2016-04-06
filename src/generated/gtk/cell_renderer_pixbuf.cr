require "./cell_renderer"

module Gtk
  class CellRendererPixbuf < CellRenderer
    def initialize(@gtk_cell_renderer_pixbuf)
    end

    def to_unsafe
      @gtk_cell_renderer_pixbuf.not_nil!
    end











    def self.new_internal
      __return_value = LibGtk.cell_renderer_pixbuf_new
      Gtk::CellRenderer.new(__return_value)
    end

  end
end

