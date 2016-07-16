module Gtk
  class RadioMenuItemAccessiblePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::RadioMenuItemAccessiblePrivate*))
    end

    @gtk_radio_menu_item_accessible_private : LibGtk::RadioMenuItemAccessiblePrivate*?
    def initialize(@gtk_radio_menu_item_accessible_private : LibGtk::RadioMenuItemAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_radio_menu_item_accessible_private.not_nil!.as(Void*)
    end

  end
end

