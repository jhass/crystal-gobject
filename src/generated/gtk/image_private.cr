module Gtk
  class ImagePrivate
    include GObject::WrappedType

    def initialize(@gtk_image_private)
    end

    def to_unsafe
      @gtk_image_private.not_nil!
    end

  end
end

