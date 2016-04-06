module Gtk
  class ImageMenuItemPrivate
    include GObject::WrappedType

    def initialize(@gtk_image_menu_item_private)
    end

    def to_unsafe
      @gtk_image_menu_item_private.not_nil!
    end

  end
end

