module Gtk
  class WidgetClassPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::WidgetClassPrivate*))
    end

    @gtk_widget_class_private : LibGtk::WidgetClassPrivate*?
    def initialize(@gtk_widget_class_private : LibGtk::WidgetClassPrivate*)
    end

    def to_unsafe
      @gtk_widget_class_private.not_nil!
    end

  end
end

