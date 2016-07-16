module Gtk
  class WidgetAccessiblePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::WidgetAccessiblePrivate*))
    end

    @gtk_widget_accessible_private : LibGtk::WidgetAccessiblePrivate*?
    def initialize(@gtk_widget_accessible_private : LibGtk::WidgetAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_widget_accessible_private.not_nil!
    end

  end
end

