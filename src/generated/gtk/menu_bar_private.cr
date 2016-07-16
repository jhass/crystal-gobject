module Gtk
  class MenuBarPrivate
    include GObject::WrappedType

    @gtk_menu_bar_private : LibGtk::MenuBarPrivate*?
    def initialize(@gtk_menu_bar_private : LibGtk::MenuBarPrivate*)
    end

    def to_unsafe
      @gtk_menu_bar_private.not_nil!.as(Void*)
    end

  end
end

