module Gtk
  class ToolPalettePrivate
    include GObject::WrappedType

    @gtk_tool_palette_private : LibGtk::ToolPalettePrivate*?
    def initialize(@gtk_tool_palette_private : LibGtk::ToolPalettePrivate*)
    end

    def to_unsafe
      @gtk_tool_palette_private.not_nil!
    end

  end
end

