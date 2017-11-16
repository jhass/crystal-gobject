require "./container_accessible"

module Gtk
  class StatusbarAccessible < ContainerAccessible
    @pointer : Void*
    def initialize(pointer : LibGtk::StatusbarAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::StatusbarAccessible*)
    end

    # Implements Component
  end
end

