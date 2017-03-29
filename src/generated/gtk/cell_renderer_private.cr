module Gtk
  class CellRendererPrivate
    include GObject::WrappedType

    @gtk_cell_renderer_private : LibGtk::CellRendererPrivate*?
    def initialize(@gtk_cell_renderer_private : LibGtk::CellRendererPrivate*)
    end

    def to_unsafe
      @gtk_cell_renderer_private.not_nil!
    end

  end
end

