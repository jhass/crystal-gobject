require "./accessible"

module Gtk
  class WidgetAccessible < Accessible
    def initialize(@gtk_widget_accessible)
    end

    def to_unsafe
      @gtk_widget_accessible.not_nil!
    end

    # Implements Component
  end
end

