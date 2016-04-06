module Gtk
  class ToolButtonPrivate
    include GObject::WrappedType

    def initialize(@gtk_tool_button_private)
    end

    def to_unsafe
      @gtk_tool_button_private.not_nil!
    end

  end
end

