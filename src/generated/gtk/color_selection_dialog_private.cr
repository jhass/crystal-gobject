module Gtk
  class ColorSelectionDialogPrivate
    include GObject::WrappedType

    @gtk_color_selection_dialog_private : LibGtk::ColorSelectionDialogPrivate*?
    def initialize(@gtk_color_selection_dialog_private : LibGtk::ColorSelectionDialogPrivate*)
    end

    def to_unsafe
      @gtk_color_selection_dialog_private.not_nil!
    end

  end
end

