require "./widget_accessible"

module Gtk
  class ProgressBarAccessible < WidgetAccessible
    @gtk_progress_bar_accessible : LibGtk::ProgressBarAccessible*?
    def initialize(@gtk_progress_bar_accessible : LibGtk::ProgressBarAccessible*)
    end

    def to_unsafe
      @gtk_progress_bar_accessible.not_nil!.as(Void*)
    end

    # Implements Component
    # Implements Value
  end
end

