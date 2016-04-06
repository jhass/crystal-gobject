module Gtk
  class CellAccessiblePrivate
    include GObject::WrappedType

    def initialize(@gtk_cell_accessible_private)
    end

    def to_unsafe
      @gtk_cell_accessible_private.not_nil!
    end

  end
end

