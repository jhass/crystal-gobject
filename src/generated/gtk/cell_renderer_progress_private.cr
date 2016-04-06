module Gtk
  class CellRendererProgressPrivate
    include GObject::WrappedType

    def initialize(@gtk_cell_renderer_progress_private)
    end

    def to_unsafe
      @gtk_cell_renderer_progress_private.not_nil!
    end

  end
end

