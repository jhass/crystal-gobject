module Gtk
  class CellRendererTogglePrivate
    include GObject::WrappedType

    @gtk_cell_renderer_toggle_private : LibGtk::CellRendererTogglePrivate*?
    def initialize(@gtk_cell_renderer_toggle_private : LibGtk::CellRendererTogglePrivate*)
    end

    def to_unsafe
      @gtk_cell_renderer_toggle_private.not_nil!
    end

  end
end

