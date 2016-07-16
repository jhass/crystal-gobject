module Gtk
  class CellAreaContextPrivate
    include GObject::WrappedType

    @gtk_cell_area_context_private : LibGtk::CellAreaContextPrivate*?
    def initialize(@gtk_cell_area_context_private : LibGtk::CellAreaContextPrivate*)
    end

    def to_unsafe
      @gtk_cell_area_context_private.not_nil!.as(Void*)
    end

  end
end

