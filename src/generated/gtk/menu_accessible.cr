require "./menu_shell_accessible"

module Gtk
  class MenuAccessible < MenuShellAccessible
    @gtk_menu_accessible : LibGtk::MenuAccessible*?
    def initialize(@gtk_menu_accessible : LibGtk::MenuAccessible*)
    end

    def to_unsafe
      @gtk_menu_accessible.not_nil!
    end

    # Implements Component
    # Implements Selection
  end
end

