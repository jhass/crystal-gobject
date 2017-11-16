require "./container_accessible"

module Gtk
  class ScrolledWindowAccessible < ContainerAccessible
    @pointer : Void*
    def initialize(pointer : LibGtk::ScrolledWindowAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ScrolledWindowAccessible*)
    end

    # Implements Component
  end
end

