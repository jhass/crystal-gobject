module Gtk
  class FontSelectionDialogPrivate
    include GObject::WrappedType

    def initialize(@gtk_font_selection_dialog_private)
    end

    def to_unsafe
      @gtk_font_selection_dialog_private.not_nil!
    end

  end
end

