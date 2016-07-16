module Gtk
  class CellAreaPrivate
    include GObject::WrappedType

    @gtk_cell_area_private : LibGtk::CellAreaPrivate*?
    def initialize(@gtk_cell_area_private : LibGtk::CellAreaPrivate*)
    end

    def to_unsafe
      @gtk_cell_area_private.not_nil!.as(Void*)
    end

  end
end

