require "./container_accessible"

module Gtk
  class TreeViewAccessible < ContainerAccessible
    @pointer : Void*
    def initialize(pointer : LibGtk::TreeViewAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::TreeViewAccessible*)
    end

    # Implements Component
    # Implements Selection
    # Implements Table
    # Implements CellAccessibleParent
  end
end

