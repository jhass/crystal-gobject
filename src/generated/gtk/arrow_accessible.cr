require "./widget_accessible"

module Gtk
  class ArrowAccessible < WidgetAccessible
    def initialize(@gtk_arrow_accessible)
    end

    def to_unsafe
      @gtk_arrow_accessible.not_nil!
    end

    # Implements Component
    # Implements Image
  end
end

