module Gtk
  class ImagePrivate
    include GObject::WrappedType

    @gtk_image_private : LibGtk::ImagePrivate*?
    def initialize(@gtk_image_private : LibGtk::ImagePrivate*)
    end

    def to_unsafe
      @gtk_image_private.not_nil!.as(Void*)
    end

  end
end

