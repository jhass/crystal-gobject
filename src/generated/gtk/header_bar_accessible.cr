require "./container_accessible"

module Gtk
  class HeaderBarAccessible < ContainerAccessible
    @pointer : Void*
    def initialize(pointer : LibGtk::HeaderBarAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::HeaderBarAccessible*)
    end

    # Implements Component
  end
end

