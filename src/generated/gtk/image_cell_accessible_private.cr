module Gtk
  class ImageCellAccessiblePrivate
    include GObject::WrappedType

    @gtk_image_cell_accessible_private : LibGtk::ImageCellAccessiblePrivate*?
    def initialize(@gtk_image_cell_accessible_private : LibGtk::ImageCellAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_image_cell_accessible_private.not_nil!.as(Void*)
    end

  end
end

