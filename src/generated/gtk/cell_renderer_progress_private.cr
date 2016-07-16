module Gtk
  class CellRendererProgressPrivate
    include GObject::WrappedType

    @gtk_cell_renderer_progress_private : LibGtk::CellRendererProgressPrivate*?
    def initialize(@gtk_cell_renderer_progress_private : LibGtk::CellRendererProgressPrivate*)
    end

    def to_unsafe
      @gtk_cell_renderer_progress_private.not_nil!.as(Void*)
    end

  end
end

