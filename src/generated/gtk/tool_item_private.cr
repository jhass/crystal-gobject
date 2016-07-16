module Gtk
  class ToolItemPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::ToolItemPrivate*))
    end

    @gtk_tool_item_private : LibGtk::ToolItemPrivate*?
    def initialize(@gtk_tool_item_private : LibGtk::ToolItemPrivate*)
    end

    def to_unsafe
      @gtk_tool_item_private.not_nil!
    end

  end
end

