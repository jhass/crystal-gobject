require "./container_accessible"

module Gtk
  class PanedAccessible < ContainerAccessible
    def initialize(@gtk_paned_accessible)
    end

    def to_unsafe
      @gtk_paned_accessible.not_nil!
    end

    # Implements Component
    # Implements Value
  end
end

