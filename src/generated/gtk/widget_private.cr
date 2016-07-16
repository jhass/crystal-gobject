module Gtk
  class WidgetPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::WidgetPrivate*))
    end

    @gtk_widget_private : LibGtk::WidgetPrivate*?
    def initialize(@gtk_widget_private : LibGtk::WidgetPrivate*)
    end

    def to_unsafe
      @gtk_widget_private.not_nil!.as(Void*)
    end

  end
end

