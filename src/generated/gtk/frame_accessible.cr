require "./container_accessible"

module Gtk
  class FrameAccessible < ContainerAccessible
    @pointer : Void*
    def initialize(pointer : LibGtk::FrameAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::FrameAccessible*)
    end

    # Implements Component
  end
end

