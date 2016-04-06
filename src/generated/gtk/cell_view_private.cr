module Gtk
  class CellViewPrivate
    include GObject::WrappedType

    def initialize(@gtk_cell_view_private)
    end

    def to_unsafe
      @gtk_cell_view_private.not_nil!
    end

  end
end

