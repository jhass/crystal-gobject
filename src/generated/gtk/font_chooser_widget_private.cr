module Gtk
  class FontChooserWidgetPrivate
    include GObject::WrappedType

    def initialize(@gtk_font_chooser_widget_private)
    end

    def to_unsafe
      @gtk_font_chooser_widget_private.not_nil!
    end

  end
end

