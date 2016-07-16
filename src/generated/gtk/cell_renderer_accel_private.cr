module Gtk
  class CellRendererAccelPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::CellRendererAccelPrivate*))
    end

    @gtk_cell_renderer_accel_private : LibGtk::CellRendererAccelPrivate*?
    def initialize(@gtk_cell_renderer_accel_private : LibGtk::CellRendererAccelPrivate*)
    end

    def to_unsafe
      @gtk_cell_renderer_accel_private.not_nil!
    end

  end
end

