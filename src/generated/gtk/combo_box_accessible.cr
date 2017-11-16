require "./container_accessible"

module Gtk
  class ComboBoxAccessible < ContainerAccessible
    @pointer : Void*
    def initialize(pointer : LibGtk::ComboBoxAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ComboBoxAccessible*)
    end

    # Implements Action
    # Implements Component
    # Implements Selection
  end
end

