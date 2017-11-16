require "./container_accessible"

module Gtk
  class MenuItemAccessible < ContainerAccessible
    @pointer : Void*
    def initialize(pointer : LibGtk::MenuItemAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::MenuItemAccessible*)
    end

    # Implements Action
    # Implements Component
    # Implements Selection
  end
end

