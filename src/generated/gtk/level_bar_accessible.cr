require "./widget_accessible"

module Gtk
  class LevelBarAccessible < WidgetAccessible
    @gtk_level_bar_accessible : LibGtk::LevelBarAccessible*?
    def initialize(@gtk_level_bar_accessible : LibGtk::LevelBarAccessible*)
    end

    def to_unsafe
      @gtk_level_bar_accessible.not_nil!
    end

    # Implements Component
    # Implements Value
  end
end

