module Gtk
  class ToolItemPrivate
    include GObject::WrappedType

    def initialize(@gtk_tool_item_private)
    end

    def to_unsafe
      @gtk_tool_item_private.not_nil!
    end

  end
end

