module Gtk
  class CellRendererClassPrivate
    include GObject::WrappedType

    @gtk_cell_renderer_class_private : LibGtk::CellRendererClassPrivate*?
    def initialize(@gtk_cell_renderer_class_private : LibGtk::CellRendererClassPrivate*)
    end

    def to_unsafe
      @gtk_cell_renderer_class_private.not_nil!.as(Void*)
    end

  end
end

