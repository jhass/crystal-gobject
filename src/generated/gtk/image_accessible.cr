require "./widget_accessible"

module Gtk
  class ImageAccessible < WidgetAccessible
    @gtk_image_accessible : LibGtk::ImageAccessible*?
    def initialize(@gtk_image_accessible : LibGtk::ImageAccessible*)
    end

    def to_unsafe
      @gtk_image_accessible.not_nil!.as(Void*)
    end

    # Implements Component
    # Implements Image
  end
end

