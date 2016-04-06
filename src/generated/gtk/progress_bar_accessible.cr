require "./widget_accessible"

module Gtk
  class ProgressBarAccessible < WidgetAccessible
    def initialize(@gtk_progress_bar_accessible)
    end

    def to_unsafe
      @gtk_progress_bar_accessible.not_nil!
    end

    # Implements Component
    # Implements Value
  end
end

