module Gtk
  class CellRendererTextPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::CellRendererTextPrivate*))
    end

    @gtk_cell_renderer_text_private : LibGtk::CellRendererTextPrivate*?
    def initialize(@gtk_cell_renderer_text_private : LibGtk::CellRendererTextPrivate*)
    end

    def to_unsafe
      @gtk_cell_renderer_text_private.not_nil!
    end

  end
end

