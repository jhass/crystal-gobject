require "./range_accessible"

module Gtk
  class ScaleAccessible < RangeAccessible
    def initialize(@gtk_scale_accessible)
    end

    def to_unsafe
      @gtk_scale_accessible.not_nil!
    end

    # Implements Component
    # Implements Value
  end
end

