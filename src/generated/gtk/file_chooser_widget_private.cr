module Gtk
  class FileChooserWidgetPrivate
    include GObject::WrappedType

    @gtk_file_chooser_widget_private : LibGtk::FileChooserWidgetPrivate*?
    def initialize(@gtk_file_chooser_widget_private : LibGtk::FileChooserWidgetPrivate*)
    end

    def to_unsafe
      @gtk_file_chooser_widget_private.not_nil!.as(Void*)
    end

  end
end

