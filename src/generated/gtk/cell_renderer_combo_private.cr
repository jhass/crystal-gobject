module Gtk
  class CellRendererComboPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::CellRendererComboPrivate*))
    end

    @gtk_cell_renderer_combo_private : LibGtk::CellRendererComboPrivate*?
    def initialize(@gtk_cell_renderer_combo_private : LibGtk::CellRendererComboPrivate*)
    end

    def to_unsafe
      @gtk_cell_renderer_combo_private.not_nil!
    end

  end
end

