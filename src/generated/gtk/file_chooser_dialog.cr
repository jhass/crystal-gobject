require "./dialog"

module Gtk
  class FileChooserDialog < Dialog
    def initialize(@gtk_file_chooser_dialog)
    end

    def to_unsafe
      @gtk_file_chooser_dialog.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements FileChooser
  end
end

