module Gtk
  class CellRendererPrivate
    include GObject::WrappedType

    def initialize(@gtk_cell_renderer_private)
    end

    def to_unsafe
      @gtk_cell_renderer_private.not_nil!
    end

  end
end

