module Gtk
  class ColorSelectionDialogPrivate
    include GObject::WrappedType

    def initialize(@gtk_color_selection_dialog_private)
    end

    def to_unsafe
      @gtk_color_selection_dialog_private.not_nil!
    end

  end
end

