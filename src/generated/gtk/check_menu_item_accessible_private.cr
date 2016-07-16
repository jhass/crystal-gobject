module Gtk
  class CheckMenuItemAccessiblePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::CheckMenuItemAccessiblePrivate*))
    end

    @gtk_check_menu_item_accessible_private : LibGtk::CheckMenuItemAccessiblePrivate*?
    def initialize(@gtk_check_menu_item_accessible_private : LibGtk::CheckMenuItemAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_check_menu_item_accessible_private.not_nil!.as(Void*)
    end

  end
end

