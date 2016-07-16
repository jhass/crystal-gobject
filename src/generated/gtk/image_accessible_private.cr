module Gtk
  class ImageAccessiblePrivate
    include GObject::WrappedType

    @gtk_image_accessible_private : LibGtk::ImageAccessiblePrivate*?
    def initialize(@gtk_image_accessible_private : LibGtk::ImageAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_image_accessible_private.not_nil!.as(Void*)
    end

  end
end

