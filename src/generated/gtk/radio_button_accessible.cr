require "./toggle_button_accessible"

module Gtk
  class RadioButtonAccessible < ToggleButtonAccessible
    @pointer : Void*
    def initialize(pointer : LibGtk::RadioButtonAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::RadioButtonAccessible*)
    end

    # Implements Action
    # Implements Component
    # Implements Image
  end
end

