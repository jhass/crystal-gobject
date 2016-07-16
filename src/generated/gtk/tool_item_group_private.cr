module Gtk
  class ToolItemGroupPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::ToolItemGroupPrivate*))
    end

    @gtk_tool_item_group_private : LibGtk::ToolItemGroupPrivate*?
    def initialize(@gtk_tool_item_group_private : LibGtk::ToolItemGroupPrivate*)
    end

    def to_unsafe
      @gtk_tool_item_group_private.not_nil!.as(Void*)
    end

  end
end

