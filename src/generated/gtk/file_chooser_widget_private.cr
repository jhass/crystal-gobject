module Gtk
  class FileChooserWidgetPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::FileChooserWidgetPrivate*))
    end

    @gtk_file_chooser_widget_private : LibGtk::FileChooserWidgetPrivate*?
    def initialize(@gtk_file_chooser_widget_private : LibGtk::FileChooserWidgetPrivate*)
    end

    def to_unsafe
      @gtk_file_chooser_widget_private.not_nil!.as(Void*)
    end

  end
end

