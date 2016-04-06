module Gtk
  class RendererCellAccessiblePrivate
    include GObject::WrappedType

    def initialize(@gtk_renderer_cell_accessible_private)
    end

    def to_unsafe
      @gtk_renderer_cell_accessible_private.not_nil!
    end

  end
end

