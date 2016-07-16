module Gtk
  class TearoffMenuItemPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::TearoffMenuItemPrivate*))
    end

    @gtk_tearoff_menu_item_private : LibGtk::TearoffMenuItemPrivate*?
    def initialize(@gtk_tearoff_menu_item_private : LibGtk::TearoffMenuItemPrivate*)
    end

    def to_unsafe
      @gtk_tearoff_menu_item_private.not_nil!
    end

  end
end

