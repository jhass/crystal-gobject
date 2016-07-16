module Gtk
  class CellRendererProgressPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::CellRendererProgressPrivate*))
    end

    @gtk_cell_renderer_progress_private : LibGtk::CellRendererProgressPrivate*?
    def initialize(@gtk_cell_renderer_progress_private : LibGtk::CellRendererProgressPrivate*)
    end

    def to_unsafe
      @gtk_cell_renderer_progress_private.not_nil!.as(Void*)
    end

  end
end

