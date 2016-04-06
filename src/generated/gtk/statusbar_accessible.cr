require "./container_accessible"

module Gtk
  class StatusbarAccessible < ContainerAccessible
    def initialize(@gtk_statusbar_accessible)
    end

    def to_unsafe
      @gtk_statusbar_accessible.not_nil!
    end

    # Implements Component
  end
end

