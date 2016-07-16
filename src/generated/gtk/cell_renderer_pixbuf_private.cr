module Gtk
  class CellRendererPixbufPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::CellRendererPixbufPrivate*))
    end

    @gtk_cell_renderer_pixbuf_private : LibGtk::CellRendererPixbufPrivate*?
    def initialize(@gtk_cell_renderer_pixbuf_private : LibGtk::CellRendererPixbufPrivate*)
    end

    def to_unsafe
      @gtk_cell_renderer_pixbuf_private.not_nil!.as(Void*)
    end

  end
end

