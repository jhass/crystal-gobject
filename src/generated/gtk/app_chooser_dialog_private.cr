module Gtk
  class AppChooserDialogPrivate
    include GObject::WrappedType

    def initialize(@gtk_app_chooser_dialog_private)
    end

    def to_unsafe
      @gtk_app_chooser_dialog_private.not_nil!
    end

  end
end

