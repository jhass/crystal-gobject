module Gtk
  class CellAreaPrivate
    include GObject::WrappedType

    def initialize(@gtk_cell_area_private)
    end

    def to_unsafe
      @gtk_cell_area_private.not_nil!
    end

  end
end

