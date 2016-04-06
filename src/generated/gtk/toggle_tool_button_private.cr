module Gtk
  class ToggleToolButtonPrivate
    include GObject::WrappedType

    def initialize(@gtk_toggle_tool_button_private)
    end

    def to_unsafe
      @gtk_toggle_tool_button_private.not_nil!
    end

  end
end

