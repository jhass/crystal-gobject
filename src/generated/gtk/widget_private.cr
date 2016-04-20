module Gtk
  class WidgetPrivate
    include GObject::WrappedType

    @gtk_widget_private : LibGtk::WidgetPrivate*?
    def initialize(@gtk_widget_private : LibGtk::WidgetPrivate*)
    end

    def to_unsafe
      @gtk_widget_private.not_nil!
    end

  end
end

