module Gtk
  class CellRendererClassPrivate
    include GObject::WrappedType

    def initialize(@gtk_cell_renderer_class_private)
    end

    def to_unsafe
      @gtk_cell_renderer_class_private.not_nil!
    end

  end
end

