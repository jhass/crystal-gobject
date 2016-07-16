module Gtk
  class MenuItemAccessiblePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::MenuItemAccessiblePrivate*))
    end

    @gtk_menu_item_accessible_private : LibGtk::MenuItemAccessiblePrivate*?
    def initialize(@gtk_menu_item_accessible_private : LibGtk::MenuItemAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_menu_item_accessible_private.not_nil!.as(Void*)
    end

  end
end

