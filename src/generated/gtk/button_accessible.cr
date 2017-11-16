require "./container_accessible"

module Gtk
  class ButtonAccessible < ContainerAccessible
    @pointer : Void*
    def initialize(pointer : LibGtk::ButtonAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ButtonAccessible*)
    end

    # Implements Action
    # Implements Component
    # Implements Image
  end
end

