require "./toggle_button_accessible"

module Gtk
  class MenuButtonAccessible < ToggleButtonAccessible
    @pointer : Void*
    def initialize(pointer : LibGtk::MenuButtonAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::MenuButtonAccessible*)
    end

    # Implements Action
    # Implements Component
    # Implements Image
  end
end

