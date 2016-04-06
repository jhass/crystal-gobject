require "./menu_shell_accessible"

module Gtk
  class MenuAccessible < MenuShellAccessible
    def initialize(@gtk_menu_accessible)
    end

    def to_unsafe
      @gtk_menu_accessible.not_nil!
    end

    # Implements Component
    # Implements Selection
  end
end

