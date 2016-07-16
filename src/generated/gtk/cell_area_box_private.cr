module Gtk
  class CellAreaBoxPrivate
    include GObject::WrappedType

    @gtk_cell_area_box_private : LibGtk::CellAreaBoxPrivate*?
    def initialize(@gtk_cell_area_box_private : LibGtk::CellAreaBoxPrivate*)
    end

    def to_unsafe
      @gtk_cell_area_box_private.not_nil!.as(Void*)
    end

  end
end

