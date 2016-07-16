require "./container_accessible"

module Gtk
  class StatusbarAccessible < ContainerAccessible
    @gtk_statusbar_accessible : LibGtk::StatusbarAccessible*?
    def initialize(@gtk_statusbar_accessible : LibGtk::StatusbarAccessible*)
    end

    def to_unsafe
      @gtk_statusbar_accessible.not_nil!.as(Void*)
    end

    # Implements Component
  end
end

