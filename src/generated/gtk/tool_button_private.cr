module Gtk
  class ToolButtonPrivate
    include GObject::WrappedType

    @gtk_tool_button_private : LibGtk::ToolButtonPrivate*?
    def initialize(@gtk_tool_button_private : LibGtk::ToolButtonPrivate*)
    end

    def to_unsafe
      @gtk_tool_button_private.not_nil!
    end

  end
end

