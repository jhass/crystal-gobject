require "./container_accessible"

module Gtk
  class IconViewAccessible < ContainerAccessible
    @gtk_icon_view_accessible : LibGtk::IconViewAccessible*?
    def initialize(@gtk_icon_view_accessible : LibGtk::IconViewAccessible*)
    end

    def to_unsafe
      @gtk_icon_view_accessible.not_nil!
    end

    # Implements Component
    # Implements Selection
  end
end

