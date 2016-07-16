module Gtk
  class CellRendererTogglePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::CellRendererTogglePrivate*))
    end

    @gtk_cell_renderer_toggle_private : LibGtk::CellRendererTogglePrivate*?
    def initialize(@gtk_cell_renderer_toggle_private : LibGtk::CellRendererTogglePrivate*)
    end

    def to_unsafe
      @gtk_cell_renderer_toggle_private.not_nil!
    end

  end
end

