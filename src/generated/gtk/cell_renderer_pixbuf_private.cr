module Gtk
  class CellRendererPixbufPrivate
    include GObject::WrappedType

    @gtk_cell_renderer_pixbuf_private : LibGtk::CellRendererPixbufPrivate*?
    def initialize(@gtk_cell_renderer_pixbuf_private : LibGtk::CellRendererPixbufPrivate*)
    end

    def to_unsafe
      @gtk_cell_renderer_pixbuf_private.not_nil!
    end

  end
end

