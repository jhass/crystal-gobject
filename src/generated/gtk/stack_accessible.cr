require "./container_accessible"

module Gtk
  class StackAccessible < ContainerAccessible
    @pointer : Void*
    def initialize(pointer : LibGtk::StackAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::StackAccessible*)
    end

    # Implements Component
  end
end

