require "./container_accessible"

module Gtk
  class IconViewAccessible < ContainerAccessible
    def initialize(@gtk_icon_view_accessible)
    end

    def to_unsafe
      @gtk_icon_view_accessible.not_nil!
    end

    # Implements Component
    # Implements Selection
  end
end

