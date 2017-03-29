module Gtk
  class CellRendererComboPrivate
    include GObject::WrappedType

    @gtk_cell_renderer_combo_private : LibGtk::CellRendererComboPrivate*?
    def initialize(@gtk_cell_renderer_combo_private : LibGtk::CellRendererComboPrivate*)
    end

    def to_unsafe
      @gtk_cell_renderer_combo_private.not_nil!
    end

  end
end

