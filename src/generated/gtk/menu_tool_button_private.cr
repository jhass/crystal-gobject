module Gtk
  class MenuToolButtonPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::MenuToolButtonPrivate*))
    end

    @gtk_menu_tool_button_private : LibGtk::MenuToolButtonPrivate*?
    def initialize(@gtk_menu_tool_button_private : LibGtk::MenuToolButtonPrivate*)
    end

    def to_unsafe
      @gtk_menu_tool_button_private.not_nil!
    end

  end
end

