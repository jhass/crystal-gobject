require "./container_accessible"

module Gtk
  class ListBoxRowAccessible < ContainerAccessible
    @pointer : Void*
    def initialize(pointer : LibGtk::ListBoxRowAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ListBoxRowAccessible*)
    end

    # Implements Component
  end
end

