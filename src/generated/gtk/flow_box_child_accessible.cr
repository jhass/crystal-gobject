require "./container_accessible"

module Gtk
  class FlowBoxChildAccessible < ContainerAccessible
    @gtk_flow_box_child_accessible : LibGtk::FlowBoxChildAccessible*?
    def initialize(@gtk_flow_box_child_accessible : LibGtk::FlowBoxChildAccessible*)
    end

    def to_unsafe
      @gtk_flow_box_child_accessible.not_nil!.as(Void*)
    end

    # Implements Component
  end
end

