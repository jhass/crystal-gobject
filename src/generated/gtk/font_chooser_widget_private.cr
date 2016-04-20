module Gtk
  class FontChooserWidgetPrivate
    include GObject::WrappedType

    @gtk_font_chooser_widget_private : LibGtk::FontChooserWidgetPrivate*?
    def initialize(@gtk_font_chooser_widget_private : LibGtk::FontChooserWidgetPrivate*)
    end

    def to_unsafe
      @gtk_font_chooser_widget_private.not_nil!
    end

  end
end

