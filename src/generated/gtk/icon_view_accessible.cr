require "./container_accessible"

module Gtk
  class IconViewAccessible < ContainerAccessible
    @pointer : Void*
    def initialize(pointer : LibGtk::IconViewAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::IconViewAccessible*)
    end

    # Implements Component
    # Implements Selection
  end
end

