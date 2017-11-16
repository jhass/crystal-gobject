require "./menu_item_accessible"

module Gtk
  class CheckMenuItemAccessible < MenuItemAccessible
    @pointer : Void*
    def initialize(pointer : LibGtk::CheckMenuItemAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::CheckMenuItemAccessible*)
    end

    # Implements Action
    # Implements Component
    # Implements Selection
  end
end

