require "./container_accessible"

module Gtk
  class FlowBoxAccessible < ContainerAccessible
    def initialize(@gtk_flow_box_accessible)
    end

    def to_unsafe
      @gtk_flow_box_accessible.not_nil!
    end

    # Implements Component
    # Implements Selection
  end
end

