module Gtk
  class MenuToolButtonPrivate
    include GObject::WrappedType

    @gtk_menu_tool_button_private : LibGtk::MenuToolButtonPrivate*?
    def initialize(@gtk_menu_tool_button_private : LibGtk::MenuToolButtonPrivate*)
    end

    def to_unsafe
      @gtk_menu_tool_button_private.not_nil!
    end

  end
end

