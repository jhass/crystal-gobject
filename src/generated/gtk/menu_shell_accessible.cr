require "./container_accessible"

module Gtk
  class MenuShellAccessible < ContainerAccessible
    @pointer : Void*
    def initialize(pointer : LibGtk::MenuShellAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::MenuShellAccessible*)
    end

    # Implements Component
    # Implements Selection
  end
end

