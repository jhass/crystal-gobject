module Gtk
  class RendererCellAccessiblePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::RendererCellAccessiblePrivate*))
    end

    @gtk_renderer_cell_accessible_private : LibGtk::RendererCellAccessiblePrivate*?
    def initialize(@gtk_renderer_cell_accessible_private : LibGtk::RendererCellAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_renderer_cell_accessible_private.not_nil!.as(Void*)
    end

  end
end

