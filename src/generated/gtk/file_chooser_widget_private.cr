module Gtk
  class FileChooserWidgetPrivate
    include GObject::WrappedType

    def initialize(@gtk_file_chooser_widget_private)
    end

    def to_unsafe
      @gtk_file_chooser_widget_private.not_nil!
    end

  end
end

