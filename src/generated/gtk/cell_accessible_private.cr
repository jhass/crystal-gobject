module Gtk
  class CellAccessiblePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::CellAccessiblePrivate*))
    end

    @gtk_cell_accessible_private : LibGtk::CellAccessiblePrivate*?
    def initialize(@gtk_cell_accessible_private : LibGtk::CellAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_cell_accessible_private.not_nil!
    end

  end
end

