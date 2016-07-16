module Gtk
  class ToolItemPrivate
    include GObject::WrappedType

    @gtk_tool_item_private : LibGtk::ToolItemPrivate*?
    def initialize(@gtk_tool_item_private : LibGtk::ToolItemPrivate*)
    end

    def to_unsafe
      @gtk_tool_item_private.not_nil!.as(Void*)
    end

  end
end

