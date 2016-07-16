module Gtk
  class FontChooserWidgetPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::FontChooserWidgetPrivate*))
    end

    @gtk_font_chooser_widget_private : LibGtk::FontChooserWidgetPrivate*?
    def initialize(@gtk_font_chooser_widget_private : LibGtk::FontChooserWidgetPrivate*)
    end

    def to_unsafe
      @gtk_font_chooser_widget_private.not_nil!
    end

  end
end

