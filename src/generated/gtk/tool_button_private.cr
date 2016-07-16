module Gtk
  class ToolButtonPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::ToolButtonPrivate*))
    end

    @gtk_tool_button_private : LibGtk::ToolButtonPrivate*?
    def initialize(@gtk_tool_button_private : LibGtk::ToolButtonPrivate*)
    end

    def to_unsafe
      @gtk_tool_button_private.not_nil!.as(Void*)
    end

  end
end

