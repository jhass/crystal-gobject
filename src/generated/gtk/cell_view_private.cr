module Gtk
  class CellViewPrivate
    include GObject::WrappedType

    @gtk_cell_view_private : LibGtk::CellViewPrivate*?
    def initialize(@gtk_cell_view_private : LibGtk::CellViewPrivate*)
    end

    def to_unsafe
      @gtk_cell_view_private.not_nil!
    end

  end
end

