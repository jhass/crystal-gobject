module Gtk
  class FileChooserButtonPrivate
    include GObject::WrappedType

    def initialize(@gtk_file_chooser_button_private)
    end

    def to_unsafe
      @gtk_file_chooser_button_private.not_nil!
    end

  end
end

