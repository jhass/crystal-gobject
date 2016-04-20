module Gtk
  class FontSelectionPrivate
    include GObject::WrappedType

    @gtk_font_selection_private : LibGtk::FontSelectionPrivate*?
    def initialize(@gtk_font_selection_private : LibGtk::FontSelectionPrivate*)
    end

    def to_unsafe
      @gtk_font_selection_private.not_nil!
    end

  end
end

