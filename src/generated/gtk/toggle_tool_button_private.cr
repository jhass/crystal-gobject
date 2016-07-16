module Gtk
  class ToggleToolButtonPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::ToggleToolButtonPrivate*))
    end

    @gtk_toggle_tool_button_private : LibGtk::ToggleToolButtonPrivate*?
    def initialize(@gtk_toggle_tool_button_private : LibGtk::ToggleToolButtonPrivate*)
    end

    def to_unsafe
      @gtk_toggle_tool_button_private.not_nil!.as(Void*)
    end

  end
end

