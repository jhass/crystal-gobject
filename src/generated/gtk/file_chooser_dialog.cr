require "./dialog"

module Gtk
  class FileChooserDialog < Dialog
    @gtk_file_chooser_dialog : LibGtk::FileChooserDialog*?
    def initialize(@gtk_file_chooser_dialog : LibGtk::FileChooserDialog*)
    end

    def to_unsafe
      @gtk_file_chooser_dialog.not_nil!.as(Void*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements FileChooser
  end
end

