module Gtk
  class CellRendererTextPrivate
    include GObject::WrappedType

    def initialize(@gtk_cell_renderer_text_private)
    end

    def to_unsafe
      @gtk_cell_renderer_text_private.not_nil!
    end

  end
end

