require "./container_accessible"

module Gtk
  class NotebookAccessible < ContainerAccessible
    @pointer : Void*
    def initialize(pointer : LibGtk::NotebookAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::NotebookAccessible*)
    end

    # Implements Component
    # Implements Selection
  end
end

