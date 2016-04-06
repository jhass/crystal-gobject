module Gtk
  class CellRendererAccelPrivate
    include GObject::WrappedType

    def initialize(@gtk_cell_renderer_accel_private)
    end

    def to_unsafe
      @gtk_cell_renderer_accel_private.not_nil!
    end

  end
end

