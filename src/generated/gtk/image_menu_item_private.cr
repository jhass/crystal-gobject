module Gtk
  class ImageMenuItemPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::ImageMenuItemPrivate*))
    end

    @gtk_image_menu_item_private : LibGtk::ImageMenuItemPrivate*?
    def initialize(@gtk_image_menu_item_private : LibGtk::ImageMenuItemPrivate*)
    end

    def to_unsafe
      @gtk_image_menu_item_private.not_nil!
    end

  end
end

