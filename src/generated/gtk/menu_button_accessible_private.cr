module Gtk
  class MenuButtonAccessiblePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::MenuButtonAccessiblePrivate*))
    end

    @gtk_menu_button_accessible_private : LibGtk::MenuButtonAccessiblePrivate*?
    def initialize(@gtk_menu_button_accessible_private : LibGtk::MenuButtonAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_menu_button_accessible_private.not_nil!
    end

  end
end

