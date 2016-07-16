module Gtk
  class CellAreaContextPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::CellAreaContextPrivate*))
    end

    @gtk_cell_area_context_private : LibGtk::CellAreaContextPrivate*?
    def initialize(@gtk_cell_area_context_private : LibGtk::CellAreaContextPrivate*)
    end

    def to_unsafe
      @gtk_cell_area_context_private.not_nil!
    end

  end
end

