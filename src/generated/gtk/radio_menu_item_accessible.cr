require "./check_menu_item_accessible"

module Gtk
  class RadioMenuItemAccessible < CheckMenuItemAccessible
    @pointer : Void*
    def initialize(pointer : LibGtk::RadioMenuItemAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::RadioMenuItemAccessible*)
    end

    # Implements Action
    # Implements Component
    # Implements Selection
  end
end

