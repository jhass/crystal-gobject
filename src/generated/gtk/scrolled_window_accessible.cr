require "./container_accessible"

module Gtk
  class ScrolledWindowAccessible < ContainerAccessible
    def initialize(@gtk_scrolled_window_accessible)
    end

    def to_unsafe
      @gtk_scrolled_window_accessible.not_nil!
    end

    # Implements Component
  end
end

