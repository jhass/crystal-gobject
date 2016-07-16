module Gtk
  class MenuButtonPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::MenuButtonPrivate*))
    end

    @gtk_menu_button_private : LibGtk::MenuButtonPrivate*?
    def initialize(@gtk_menu_button_private : LibGtk::MenuButtonPrivate*)
    end

    def to_unsafe
      @gtk_menu_button_private.not_nil!.as(Void*)
    end

  end
end

