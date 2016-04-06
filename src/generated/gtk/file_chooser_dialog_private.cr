module Gtk
  class FileChooserDialogPrivate
    include GObject::WrappedType

    def initialize(@gtk_file_chooser_dialog_private)
    end

    def to_unsafe
      @gtk_file_chooser_dialog_private.not_nil!
    end

  end
end

