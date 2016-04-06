require "./container_accessible"

module Gtk
  class MenuItemAccessible < ContainerAccessible
    def initialize(@gtk_menu_item_accessible)
    end

    def to_unsafe
      @gtk_menu_item_accessible.not_nil!
    end

    # Implements Action
    # Implements Component
    # Implements Selection
  end
end

