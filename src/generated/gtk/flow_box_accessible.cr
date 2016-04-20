require "./container_accessible"

module Gtk
  class FlowBoxAccessible < ContainerAccessible
    @gtk_flow_box_accessible : LibGtk::FlowBoxAccessible*?
    def initialize(@gtk_flow_box_accessible : LibGtk::FlowBoxAccessible*)
    end

    def to_unsafe
      @gtk_flow_box_accessible.not_nil!
    end

    # Implements Component
    # Implements Selection
  end
end

