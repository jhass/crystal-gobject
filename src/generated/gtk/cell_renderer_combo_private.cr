module Gtk
  class CellRendererComboPrivate
    include GObject::WrappedType

    def initialize(@gtk_cell_renderer_combo_private)
    end

    def to_unsafe
      @gtk_cell_renderer_combo_private.not_nil!
    end

  end
end

