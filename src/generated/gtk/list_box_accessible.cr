require "./container_accessible"

module Gtk
  class ListBoxAccessible < ContainerAccessible
    @pointer : Void*
    def initialize(pointer : LibGtk::ListBoxAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ListBoxAccessible*)
    end

    # Implements Component
    # Implements Selection
  end
end

