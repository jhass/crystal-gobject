module Gtk
  class MenuButtonAccessiblePrivate
    include GObject::WrappedType

    @gtk_menu_button_accessible_private : LibGtk::MenuButtonAccessiblePrivate*?
    def initialize(@gtk_menu_button_accessible_private : LibGtk::MenuButtonAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_menu_button_accessible_private.not_nil!.as(Void*)
    end

  end
end

