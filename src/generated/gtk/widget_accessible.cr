require "./accessible"

module Gtk
  class WidgetAccessible < Accessible
    @gtk_widget_accessible : LibGtk::WidgetAccessible*?
    def initialize(@gtk_widget_accessible : LibGtk::WidgetAccessible*)
    end

    def to_unsafe
      @gtk_widget_accessible.not_nil!
    end

    # Implements Component
  end
end

