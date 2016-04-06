require "./container_accessible"

module Gtk
  class MenuShellAccessible < ContainerAccessible
    def initialize(@gtk_menu_shell_accessible)
    end

    def to_unsafe
      @gtk_menu_shell_accessible.not_nil!
    end

    # Implements Component
    # Implements Selection
  end
end

