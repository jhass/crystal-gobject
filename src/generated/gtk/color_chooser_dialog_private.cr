module Gtk
  class ColorChooserDialogPrivate
    include GObject::WrappedType

    @gtk_color_chooser_dialog_private : LibGtk::ColorChooserDialogPrivate*?
    def initialize(@gtk_color_chooser_dialog_private : LibGtk::ColorChooserDialogPrivate*)
    end

    def to_unsafe
      @gtk_color_chooser_dialog_private.not_nil!
    end

  end
end

