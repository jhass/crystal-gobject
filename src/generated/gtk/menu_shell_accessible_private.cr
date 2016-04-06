module Gtk
  class MenuShellAccessiblePrivate
    include GObject::WrappedType

    def initialize(@gtk_menu_shell_accessible_private)
    end

    def to_unsafe
      @gtk_menu_shell_accessible_private.not_nil!
    end

  end
end

