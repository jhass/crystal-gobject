module Gtk
  class MenuButtonPrivate
    include GObject::WrappedType

    @gtk_menu_button_private : LibGtk::MenuButtonPrivate*?
    def initialize(@gtk_menu_button_private : LibGtk::MenuButtonPrivate*)
    end

    def to_unsafe
      @gtk_menu_button_private.not_nil!.as(Void*)
    end

  end
end

