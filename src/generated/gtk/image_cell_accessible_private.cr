module Gtk
  class ImageCellAccessiblePrivate
    include GObject::WrappedType

    def initialize(@gtk_image_cell_accessible_private)
    end

    def to_unsafe
      @gtk_image_cell_accessible_private.not_nil!
    end

  end
end

