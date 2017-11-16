require "./container_accessible"

module Gtk
  class ExpanderAccessible < ContainerAccessible
    @pointer : Void*
    def initialize(pointer : LibGtk::ExpanderAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ExpanderAccessible*)
    end

    # Implements Action
    # Implements Component
  end
end

