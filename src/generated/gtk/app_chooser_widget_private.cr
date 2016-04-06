module Gtk
  class AppChooserWidgetPrivate
    include GObject::WrappedType

    def initialize(@gtk_app_chooser_widget_private)
    end

    def to_unsafe
      @gtk_app_chooser_widget_private.not_nil!
    end

  end
end

