require "./widget_accessible"

module Gtk
  class SpinnerAccessible < WidgetAccessible
    def initialize(@gtk_spinner_accessible)
    end

    def to_unsafe
      @gtk_spinner_accessible.not_nil!
    end

    # Implements Component
    # Implements Image
  end
end

