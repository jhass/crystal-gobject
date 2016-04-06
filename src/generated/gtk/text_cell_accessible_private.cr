module Gtk
  class TextCellAccessiblePrivate
    include GObject::WrappedType

    def initialize(@gtk_text_cell_accessible_private)
    end

    def to_unsafe
      @gtk_text_cell_accessible_private.not_nil!
    end

  end
end

