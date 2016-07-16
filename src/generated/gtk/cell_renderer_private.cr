module Gtk
  class CellRendererPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::CellRendererPrivate*))
    end

    @gtk_cell_renderer_private : LibGtk::CellRendererPrivate*?
    def initialize(@gtk_cell_renderer_private : LibGtk::CellRendererPrivate*)
    end

    def to_unsafe
      @gtk_cell_renderer_private.not_nil!
    end

  end
end

