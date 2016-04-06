module Gtk
  class WidgetPrivate
    include GObject::WrappedType

    def initialize(@gtk_widget_private)
    end

    def to_unsafe
      @gtk_widget_private.not_nil!
    end

  end
end

