module Gtk
  class ToolItemGroupPrivate
    include GObject::WrappedType

    @gtk_tool_item_group_private : LibGtk::ToolItemGroupPrivate*?
    def initialize(@gtk_tool_item_group_private : LibGtk::ToolItemGroupPrivate*)
    end

    def to_unsafe
      @gtk_tool_item_group_private.not_nil!.as(Void*)
    end

  end
end

