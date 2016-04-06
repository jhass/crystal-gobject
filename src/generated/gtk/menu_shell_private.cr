module Gtk
  class MenuShellPrivate
    include GObject::WrappedType

    def initialize(@gtk_menu_shell_private)
    end

    def to_unsafe
      @gtk_menu_shell_private.not_nil!
    end

  end
end

