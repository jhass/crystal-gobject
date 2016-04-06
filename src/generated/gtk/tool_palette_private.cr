module Gtk
  class ToolPalettePrivate
    include GObject::WrappedType

    def initialize(@gtk_tool_palette_private)
    end

    def to_unsafe
      @gtk_tool_palette_private.not_nil!
    end

  end
end

