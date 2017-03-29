module Gtk
  class FontSelectionDialogPrivate
    include GObject::WrappedType

    @gtk_font_selection_dialog_private : LibGtk::FontSelectionDialogPrivate*?
    def initialize(@gtk_font_selection_dialog_private : LibGtk::FontSelectionDialogPrivate*)
    end

    def to_unsafe
      @gtk_font_selection_dialog_private.not_nil!
    end

  end
end

