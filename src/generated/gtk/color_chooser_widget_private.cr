module Gtk
  class ColorChooserWidgetPrivate
    include GObject::WrappedType

    def initialize(@gtk_color_chooser_widget_private)
    end

    def to_unsafe
      @gtk_color_chooser_widget_private.not_nil!
    end

  end
end

