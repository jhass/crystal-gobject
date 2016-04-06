module Gtk
  class CellRendererSpinPrivate
    include GObject::WrappedType

    def initialize(@gtk_cell_renderer_spin_private)
    end

    def to_unsafe
      @gtk_cell_renderer_spin_private.not_nil!
    end

  end
end

