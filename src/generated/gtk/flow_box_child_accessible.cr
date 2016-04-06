require "./container_accessible"

module Gtk
  class FlowBoxChildAccessible < ContainerAccessible
    def initialize(@gtk_flow_box_child_accessible)
    end

    def to_unsafe
      @gtk_flow_box_child_accessible.not_nil!
    end

    # Implements Component
  end
end

