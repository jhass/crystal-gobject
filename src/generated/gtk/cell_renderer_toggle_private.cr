module Gtk
  class CellRendererTogglePrivate
    include GObject::WrappedType

    def initialize(@gtk_cell_renderer_toggle_private)
    end

    def to_unsafe
      @gtk_cell_renderer_toggle_private.not_nil!
    end

  end
end

