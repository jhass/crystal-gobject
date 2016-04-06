module Gtk
  class SeparatorToolItemPrivate
    include GObject::WrappedType

    def initialize(@gtk_separator_tool_item_private)
    end

    def to_unsafe
      @gtk_separator_tool_item_private.not_nil!
    end

  end
end

