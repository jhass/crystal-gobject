module Gtk
  class WidgetClassPrivate
    include GObject::WrappedType

    def initialize(@gtk_widget_class_private)
    end

    def to_unsafe
      @gtk_widget_class_private.not_nil!
    end

  end
end

