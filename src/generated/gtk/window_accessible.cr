require "./container_accessible"

module Gtk
  class WindowAccessible < ContainerAccessible
    @pointer : Void*
    def initialize(pointer : LibGtk::WindowAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::WindowAccessible*)
    end

    # Implements Component
    # Implements Window
  end
end

