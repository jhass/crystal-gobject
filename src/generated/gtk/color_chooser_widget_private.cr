module Gtk
  class ColorChooserWidgetPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::ColorChooserWidgetPrivate*))
    end

    @gtk_color_chooser_widget_private : LibGtk::ColorChooserWidgetPrivate*?
    def initialize(@gtk_color_chooser_widget_private : LibGtk::ColorChooserWidgetPrivate*)
    end

    def to_unsafe
      @gtk_color_chooser_widget_private.not_nil!.as(Void*)
    end

  end
end

