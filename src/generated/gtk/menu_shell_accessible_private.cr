module Gtk
  class MenuShellAccessiblePrivate
    include GObject::WrappedType

    @gtk_menu_shell_accessible_private : LibGtk::MenuShellAccessiblePrivate*?
    def initialize(@gtk_menu_shell_accessible_private : LibGtk::MenuShellAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_menu_shell_accessible_private.not_nil!.as(Void*)
    end

  end
end

