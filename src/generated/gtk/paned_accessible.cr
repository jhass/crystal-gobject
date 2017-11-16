require "./container_accessible"

module Gtk
  class PanedAccessible < ContainerAccessible
    @pointer : Void*
    def initialize(pointer : LibGtk::PanedAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::PanedAccessible*)
    end

    # Implements Component
    # Implements Value
  end
end

