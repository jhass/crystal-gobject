require "./menu_shell_accessible"

module Gtk
  class MenuAccessible < MenuShellAccessible
    @pointer : Void*
    def initialize(pointer : LibGtk::MenuAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::MenuAccessible*)
    end

    # Implements Component
    # Implements Selection
  end
end

