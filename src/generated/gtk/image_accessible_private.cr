module Gtk
  class ImageAccessiblePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::ImageAccessiblePrivate*))
    end

    @gtk_image_accessible_private : LibGtk::ImageAccessiblePrivate*?
    def initialize(@gtk_image_accessible_private : LibGtk::ImageAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_image_accessible_private.not_nil!
    end

  end
end

