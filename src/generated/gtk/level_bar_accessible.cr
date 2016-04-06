require "./widget_accessible"

module Gtk
  class LevelBarAccessible < WidgetAccessible
    def initialize(@gtk_level_bar_accessible)
    end

    def to_unsafe
      @gtk_level_bar_accessible.not_nil!
    end

    # Implements Component
    # Implements Value
  end
end

