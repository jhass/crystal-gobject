module Gtk
  class FileChooserButtonPrivate
    include GObject::WrappedType

    @gtk_file_chooser_button_private : LibGtk::FileChooserButtonPrivate*?
    def initialize(@gtk_file_chooser_button_private : LibGtk::FileChooserButtonPrivate*)
    end

    def to_unsafe
      @gtk_file_chooser_button_private.not_nil!
    end

  end
end

