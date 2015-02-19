require "./cell_renderer"

module Gtk
  class CellRendererPixbuf < CellRenderer
    def initialize @gtk_cell_renderer_pixbuf
    end

    def to_unsafe
      @gtk_cell_renderer_pixbuf.not_nil!
    end

    def follow_state=(__value)
      LibGtk.cell_renderer_pixbuf_set_follow_state((to_unsafe as LibGtk::CellRendererPixbuf*), Bool.cast(__value))
    end

    def gicon=(__value)
      LibGtk.cell_renderer_pixbuf_set_gicon((to_unsafe as LibGtk::CellRendererPixbuf*), __value)
    end

    def icon_name=(__value)
      LibGtk.cell_renderer_pixbuf_set_icon_name((to_unsafe as LibGtk::CellRendererPixbuf*), __value)
    end

    def pixbuf=(__value)
      LibGtk.cell_renderer_pixbuf_set_pixbuf((to_unsafe as LibGtk::CellRendererPixbuf*), __value)
    end

    def pixbuf_expander_closed=(__value)
      LibGtk.cell_renderer_pixbuf_set_pixbuf_expander_closed((to_unsafe as LibGtk::CellRendererPixbuf*), __value)
    end

    def pixbuf_expander_open=(__value)
      LibGtk.cell_renderer_pixbuf_set_pixbuf_expander_open((to_unsafe as LibGtk::CellRendererPixbuf*), __value)
    end

    def stock_detail=(__value)
      LibGtk.cell_renderer_pixbuf_set_stock_detail((to_unsafe as LibGtk::CellRendererPixbuf*), __value)
    end

    def stock_id=(__value)
      LibGtk.cell_renderer_pixbuf_set_stock_id((to_unsafe as LibGtk::CellRendererPixbuf*), __value)
    end

    def stock_size=(__value)
      LibGtk.cell_renderer_pixbuf_set_stock_size((to_unsafe as LibGtk::CellRendererPixbuf*), UInt32.cast(__value))
    end

    def surface=(__value)
      LibGtk.cell_renderer_pixbuf_set_surface((to_unsafe as LibGtk::CellRendererPixbuf*), __value)
    end

    def self.new_internal
      __return_value = LibGtk.cell_renderer_pixbuf_new
      Gtk::CellRenderer.new(__return_value)
    end

  end
end

