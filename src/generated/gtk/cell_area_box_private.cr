module Gtk
  class CellAreaBoxPrivate
    include GObject::WrappedType

    def initialize(@gtk_cell_area_box_private)
    end

    def to_unsafe
      @gtk_cell_area_box_private.not_nil!
    end

  end
end

