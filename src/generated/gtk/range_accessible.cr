require "./widget_accessible"

module Gtk
  class RangeAccessible < WidgetAccessible
    @gtk_range_accessible : LibGtk::RangeAccessible*?
    def initialize(@gtk_range_accessible : LibGtk::RangeAccessible*)
    end

    def to_unsafe
      @gtk_range_accessible.not_nil!.as(Void*)
    end

    # Implements Component
    # Implements Value
  end
end

