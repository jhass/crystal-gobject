module Gtk
  class CellRendererSpinPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::CellRendererSpinPrivate*))
    end

    @gtk_cell_renderer_spin_private : LibGtk::CellRendererSpinPrivate*?
    def initialize(@gtk_cell_renderer_spin_private : LibGtk::CellRendererSpinPrivate*)
    end

    def to_unsafe
      @gtk_cell_renderer_spin_private.not_nil!.as(Void*)
    end

  end
end

