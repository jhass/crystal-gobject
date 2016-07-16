module Gtk
  class BooleanCellAccessiblePrivate
    include GObject::WrappedType

    @gtk_boolean_cell_accessible_private : LibGtk::BooleanCellAccessiblePrivate*?
    def initialize(@gtk_boolean_cell_accessible_private : LibGtk::BooleanCellAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_boolean_cell_accessible_private.not_nil!.as(Void*)
    end

  end
end

