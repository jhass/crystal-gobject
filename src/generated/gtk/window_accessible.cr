require "./container_accessible"

module Gtk
  class WindowAccessible < ContainerAccessible
    @gtk_window_accessible : LibGtk::WindowAccessible*?
    def initialize(@gtk_window_accessible : LibGtk::WindowAccessible*)
    end

    def to_unsafe
      @gtk_window_accessible.not_nil!.as(Void*)
    end

    # Implements Component
    # Implements Window
  end
end

