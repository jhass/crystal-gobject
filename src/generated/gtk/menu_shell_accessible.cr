require "./container_accessible"

module Gtk
  class MenuShellAccessible < ContainerAccessible
    @gtk_menu_shell_accessible : LibGtk::MenuShellAccessible*?
    def initialize(@gtk_menu_shell_accessible : LibGtk::MenuShellAccessible*)
    end

    def to_unsafe
      @gtk_menu_shell_accessible.not_nil!
    end

    # Implements Component
    # Implements Selection
  end
end

