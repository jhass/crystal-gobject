module Gtk
  class CellAreaBoxPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::CellAreaBoxPrivate*))
    end

    @gtk_cell_area_box_private : LibGtk::CellAreaBoxPrivate*?
    def initialize(@gtk_cell_area_box_private : LibGtk::CellAreaBoxPrivate*)
    end

    def to_unsafe
      @gtk_cell_area_box_private.not_nil!
    end

  end
end

