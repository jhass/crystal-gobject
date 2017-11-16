require "./cell_renderer"

module Gtk
  class CellRendererPixbuf < CellRenderer
    @pointer : Void*
    def initialize(pointer : LibGtk::CellRendererPixbuf*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::CellRendererPixbuf*)
    end

    def follow_state
      __return_value = LibGtk.cell_renderer_pixbuf_get_follow_state(to_unsafe.as(LibGtk::CellRendererPixbuf*))
      __return_value
    end

    def gicon
      __return_value = LibGtk.cell_renderer_pixbuf_get_gicon(to_unsafe.as(LibGtk::CellRendererPixbuf*))
      __return_value
    end

    def icon_name
      __return_value = LibGtk.cell_renderer_pixbuf_get_icon_name(to_unsafe.as(LibGtk::CellRendererPixbuf*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def pixbuf
      __return_value = LibGtk.cell_renderer_pixbuf_get_pixbuf(to_unsafe.as(LibGtk::CellRendererPixbuf*))
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def pixbuf_expander_closed
      __return_value = LibGtk.cell_renderer_pixbuf_get_pixbuf_expander_closed(to_unsafe.as(LibGtk::CellRendererPixbuf*))
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def pixbuf_expander_open
      __return_value = LibGtk.cell_renderer_pixbuf_get_pixbuf_expander_open(to_unsafe.as(LibGtk::CellRendererPixbuf*))
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def stock_detail
      __return_value = LibGtk.cell_renderer_pixbuf_get_stock_detail(to_unsafe.as(LibGtk::CellRendererPixbuf*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def stock_id
      __return_value = LibGtk.cell_renderer_pixbuf_get_stock_id(to_unsafe.as(LibGtk::CellRendererPixbuf*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def stock_size
      __return_value = LibGtk.cell_renderer_pixbuf_get_stock_size(to_unsafe.as(LibGtk::CellRendererPixbuf*))
      __return_value
    end

    def surface
      __return_value = LibGtk.cell_renderer_pixbuf_get_surface(to_unsafe.as(LibGtk::CellRendererPixbuf*))
      Cairo::Surface.new(__return_value)
    end

    def self.new : self
      __return_value = LibGtk.cell_renderer_pixbuf_new
      cast Gtk::CellRenderer.new(__return_value)
    end

  end
end

