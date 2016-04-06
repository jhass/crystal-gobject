module Gtk
  class WidgetAccessiblePrivate
    include GObject::WrappedType

    def initialize(@gtk_widget_accessible_private)
    end

    def to_unsafe
      @gtk_widget_accessible_private.not_nil!
    end

  end
end

