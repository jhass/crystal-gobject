module Gtk
  class FileChooserDialogPrivate
    include GObject::WrappedType

    @gtk_file_chooser_dialog_private : LibGtk::FileChooserDialogPrivate*?
    def initialize(@gtk_file_chooser_dialog_private : LibGtk::FileChooserDialogPrivate*)
    end

    def to_unsafe
      @gtk_file_chooser_dialog_private.not_nil!
    end

  end
end

