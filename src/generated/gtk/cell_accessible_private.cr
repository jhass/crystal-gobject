module Gtk
  class CellAccessiblePrivate
    include GObject::WrappedType

    @gtk_cell_accessible_private : LibGtk::CellAccessiblePrivate*?
    def initialize(@gtk_cell_accessible_private : LibGtk::CellAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_cell_accessible_private.not_nil!
    end

  end
end

