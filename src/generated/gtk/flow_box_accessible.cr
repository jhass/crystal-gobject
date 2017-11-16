require "./container_accessible"

module Gtk
  class FlowBoxAccessible < ContainerAccessible
    @pointer : Void*
    def initialize(pointer : LibGtk::FlowBoxAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::FlowBoxAccessible*)
    end

    # Implements Component
    # Implements Selection
  end
end

