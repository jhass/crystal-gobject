module Gtk
  class MenuShellPrivate
    include GObject::WrappedType

    @gtk_menu_shell_private : LibGtk::MenuShellPrivate*?
    def initialize(@gtk_menu_shell_private : LibGtk::MenuShellPrivate*)
    end

    def to_unsafe
      @gtk_menu_shell_private.not_nil!
    end

  end
end

