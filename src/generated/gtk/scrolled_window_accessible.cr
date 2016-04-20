require "./container_accessible"

module Gtk
  class ScrolledWindowAccessible < ContainerAccessible
    @gtk_scrolled_window_accessible : LibGtk::ScrolledWindowAccessible*?
    def initialize(@gtk_scrolled_window_accessible : LibGtk::ScrolledWindowAccessible*)
    end

    def to_unsafe
      @gtk_scrolled_window_accessible.not_nil!
    end

    # Implements Component
  end
end

