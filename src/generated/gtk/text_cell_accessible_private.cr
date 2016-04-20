module Gtk
  class TextCellAccessiblePrivate
    include GObject::WrappedType

    @gtk_text_cell_accessible_private : LibGtk::TextCellAccessiblePrivate*?
    def initialize(@gtk_text_cell_accessible_private : LibGtk::TextCellAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_text_cell_accessible_private.not_nil!
    end

  end
end

