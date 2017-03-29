module Gtk
  class FontChooserDialogPrivate
    include GObject::WrappedType

    @gtk_font_chooser_dialog_private : LibGtk::FontChooserDialogPrivate*?
    def initialize(@gtk_font_chooser_dialog_private : LibGtk::FontChooserDialogPrivate*)
    end

    def to_unsafe
      @gtk_font_chooser_dialog_private.not_nil!
    end

  end
end

