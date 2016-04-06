module Gtk
  class CellAreaContextPrivate
    include GObject::WrappedType

    def initialize(@gtk_cell_area_context_private)
    end

    def to_unsafe
      @gtk_cell_area_context_private.not_nil!
    end

  end
end

