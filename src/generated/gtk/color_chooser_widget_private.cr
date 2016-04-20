module Gtk
  class ColorChooserWidgetPrivate
    include GObject::WrappedType

    @gtk_color_chooser_widget_private : LibGtk::ColorChooserWidgetPrivate*?
    def initialize(@gtk_color_chooser_widget_private : LibGtk::ColorChooserWidgetPrivate*)
    end

    def to_unsafe
      @gtk_color_chooser_widget_private.not_nil!
    end

  end
end

