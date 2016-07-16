module Gtk
  class AppChooserWidgetPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::AppChooserWidgetPrivate*))
    end

    @gtk_app_chooser_widget_private : LibGtk::AppChooserWidgetPrivate*?
    def initialize(@gtk_app_chooser_widget_private : LibGtk::AppChooserWidgetPrivate*)
    end

    def to_unsafe
      @gtk_app_chooser_widget_private.not_nil!.as(Void*)
    end

  end
end

