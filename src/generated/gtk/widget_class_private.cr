module Gtk
  class WidgetClassPrivate
    include GObject::WrappedType

    @gtk_widget_class_private : LibGtk::WidgetClassPrivate*?
    def initialize(@gtk_widget_class_private : LibGtk::WidgetClassPrivate*)
    end

    def to_unsafe
      @gtk_widget_class_private.not_nil!
    end

  end
end

