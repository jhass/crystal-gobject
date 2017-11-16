require "./container_accessible"

module Gtk
  class FlowBoxChildAccessible < ContainerAccessible
    @pointer : Void*
    def initialize(pointer : LibGtk::FlowBoxChildAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::FlowBoxChildAccessible*)
    end

    # Implements Component
  end
end

