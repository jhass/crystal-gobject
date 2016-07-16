module Gtk
  class CellRendererTextPrivate
    include GObject::WrappedType

    @gtk_cell_renderer_text_private : LibGtk::CellRendererTextPrivate*?
    def initialize(@gtk_cell_renderer_text_private : LibGtk::CellRendererTextPrivate*)
    end

    def to_unsafe
      @gtk_cell_renderer_text_private.not_nil!.as(Void*)
    end

  end
end

