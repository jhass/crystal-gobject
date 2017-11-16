require "./button_accessible"

module Gtk
  class ToggleButtonAccessible < ButtonAccessible
    @pointer : Void*
    def initialize(pointer : LibGtk::ToggleButtonAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ToggleButtonAccessible*)
    end

    # Implements Action
    # Implements Component
    # Implements Image
  end
end

