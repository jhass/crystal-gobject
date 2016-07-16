module Gtk
  class CellRendererSpinPrivate
    include GObject::WrappedType

    @gtk_cell_renderer_spin_private : LibGtk::CellRendererSpinPrivate*?
    def initialize(@gtk_cell_renderer_spin_private : LibGtk::CellRendererSpinPrivate*)
    end

    def to_unsafe
      @gtk_cell_renderer_spin_private.not_nil!.as(Void*)
    end

  end
end

