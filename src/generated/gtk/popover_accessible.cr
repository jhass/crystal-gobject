require "./container_accessible"

module Gtk
  class PopoverAccessible < ContainerAccessible
    @pointer : Void*
    def initialize(pointer : LibGtk::PopoverAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::PopoverAccessible*)
    end

    # Implements Component
  end
end

