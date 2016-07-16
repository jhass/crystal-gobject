module Gtk
  class WidgetAccessiblePrivate
    include GObject::WrappedType

    @gtk_widget_accessible_private : LibGtk::WidgetAccessiblePrivate*?
    def initialize(@gtk_widget_accessible_private : LibGtk::WidgetAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_widget_accessible_private.not_nil!.as(Void*)
    end

  end
end

