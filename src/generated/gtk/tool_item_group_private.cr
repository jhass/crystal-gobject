module Gtk
  class ToolItemGroupPrivate
    include GObject::WrappedType

    def initialize(@gtk_tool_item_group_private)
    end

    def to_unsafe
      @gtk_tool_item_group_private.not_nil!
    end

  end
end

