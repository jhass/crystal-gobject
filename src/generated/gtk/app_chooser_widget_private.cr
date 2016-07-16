module Gtk
  class AppChooserWidgetPrivate
    include GObject::WrappedType

    @gtk_app_chooser_widget_private : LibGtk::AppChooserWidgetPrivate*?
    def initialize(@gtk_app_chooser_widget_private : LibGtk::AppChooserWidgetPrivate*)
    end

    def to_unsafe
      @gtk_app_chooser_widget_private.not_nil!.as(Void*)
    end

  end
end

