require "./widget_accessible"

module Gtk
  class ContainerAccessible < WidgetAccessible
    def initialize(@gtk_container_accessible)
    end

    def to_unsafe
      @gtk_container_accessible.not_nil!
    end

    # Implements Component
  end
end

