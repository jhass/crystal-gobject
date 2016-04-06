require "./container_accessible"

module Gtk
  class WindowAccessible < ContainerAccessible
    def initialize(@gtk_window_accessible)
    end

    def to_unsafe
      @gtk_window_accessible.not_nil!
    end

    # Implements Component
    # Implements Window
  end
end

