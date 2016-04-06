module Gtk
  class ColorChooserDialogPrivate
    include GObject::WrappedType

    def initialize(@gtk_color_chooser_dialog_private)
    end

    def to_unsafe
      @gtk_color_chooser_dialog_private.not_nil!
    end

  end
end

