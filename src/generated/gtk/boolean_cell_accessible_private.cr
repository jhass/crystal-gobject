module Gtk
  class BooleanCellAccessiblePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::BooleanCellAccessiblePrivate*))
    end

    @gtk_boolean_cell_accessible_private : LibGtk::BooleanCellAccessiblePrivate*?
    def initialize(@gtk_boolean_cell_accessible_private : LibGtk::BooleanCellAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_boolean_cell_accessible_private.not_nil!
    end

  end
end

