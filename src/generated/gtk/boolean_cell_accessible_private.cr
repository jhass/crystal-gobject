module Gtk
  class BooleanCellAccessiblePrivate
    include GObject::WrappedType

    def initialize(@gtk_boolean_cell_accessible_private)
    end

    def to_unsafe
      @gtk_boolean_cell_accessible_private.not_nil!
    end

  end
end

