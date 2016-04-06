require "./widget_accessible"

module Gtk
  class RangeAccessible < WidgetAccessible
    def initialize(@gtk_range_accessible)
    end

    def to_unsafe
      @gtk_range_accessible.not_nil!
    end

    # Implements Component
    # Implements Value
  end
end

