module Gtk
  class ImageCellAccessiblePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::ImageCellAccessiblePrivate*))
    end

    @gtk_image_cell_accessible_private : LibGtk::ImageCellAccessiblePrivate*?
    def initialize(@gtk_image_cell_accessible_private : LibGtk::ImageCellAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_image_cell_accessible_private.not_nil!
    end

  end
end

