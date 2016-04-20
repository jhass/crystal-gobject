module Gtk
  class CellRendererAccelPrivate
    include GObject::WrappedType

    @gtk_cell_renderer_accel_private : LibGtk::CellRendererAccelPrivate*?
    def initialize(@gtk_cell_renderer_accel_private : LibGtk::CellRendererAccelPrivate*)
    end

    def to_unsafe
      @gtk_cell_renderer_accel_private.not_nil!
    end

  end
end

