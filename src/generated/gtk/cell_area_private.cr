module Gtk
  class CellAreaPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::CellAreaPrivate*))
    end

    @gtk_cell_area_private : LibGtk::CellAreaPrivate*?
    def initialize(@gtk_cell_area_private : LibGtk::CellAreaPrivate*)
    end

    def to_unsafe
      @gtk_cell_area_private.not_nil!.as(Void*)
    end

  end
end

