module Gtk
  class SeparatorToolItemPrivate
    include GObject::WrappedType

    @gtk_separator_tool_item_private : LibGtk::SeparatorToolItemPrivate*?
    def initialize(@gtk_separator_tool_item_private : LibGtk::SeparatorToolItemPrivate*)
    end

    def to_unsafe
      @gtk_separator_tool_item_private.not_nil!
    end

  end
end

