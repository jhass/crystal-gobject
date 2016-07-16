module Gtk
  class ImagePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::ImagePrivate*))
    end

    @gtk_image_private : LibGtk::ImagePrivate*?
    def initialize(@gtk_image_private : LibGtk::ImagePrivate*)
    end

    def to_unsafe
      @gtk_image_private.not_nil!
    end

  end
end

