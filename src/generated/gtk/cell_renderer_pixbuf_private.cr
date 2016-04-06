module Gtk
  class CellRendererPixbufPrivate
    include GObject::WrappedType

    def initialize(@gtk_cell_renderer_pixbuf_private)
    end

    def to_unsafe
      @gtk_cell_renderer_pixbuf_private.not_nil!
    end

  end
end

