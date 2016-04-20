module Gtk
  class AppChooserDialogPrivate
    include GObject::WrappedType

    @gtk_app_chooser_dialog_private : LibGtk::AppChooserDialogPrivate*?
    def initialize(@gtk_app_chooser_dialog_private : LibGtk::AppChooserDialogPrivate*)
    end

    def to_unsafe
      @gtk_app_chooser_dialog_private.not_nil!
    end

  end
end

