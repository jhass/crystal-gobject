module Gtk
  class CellRendererSpinnerPrivate
    include GObject::WrappedType

    @gtk_cell_renderer_spinner_private : LibGtk::CellRendererSpinnerPrivate*?
    def initialize(@gtk_cell_renderer_spinner_private : LibGtk::CellRendererSpinnerPrivate*)
    end

    def to_unsafe
      @gtk_cell_renderer_spinner_private.not_nil!.as(Void*)
    end

  end
end

