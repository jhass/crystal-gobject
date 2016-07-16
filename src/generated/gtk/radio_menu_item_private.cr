module Gtk
  class RadioMenuItemPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::RadioMenuItemPrivate*))
    end

    @gtk_radio_menu_item_private : LibGtk::RadioMenuItemPrivate*?
    def initialize(@gtk_radio_menu_item_private : LibGtk::RadioMenuItemPrivate*)
    end

    def to_unsafe
      @gtk_radio_menu_item_private.not_nil!
    end

  end
end

