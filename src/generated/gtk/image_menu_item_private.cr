module Gtk
  class ImageMenuItemPrivate
    include GObject::WrappedType

    @gtk_image_menu_item_private : LibGtk::ImageMenuItemPrivate*?
    def initialize(@gtk_image_menu_item_private : LibGtk::ImageMenuItemPrivate*)
    end

    def to_unsafe
      @gtk_image_menu_item_private.not_nil!.as(Void*)
    end

  end
end

