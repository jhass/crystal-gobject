require "./widget_accessible"

module Gtk
  class ImageAccessible < WidgetAccessible
    def initialize(@gtk_image_accessible)
    end

    def to_unsafe
      @gtk_image_accessible.not_nil!
    end

    # Implements Component
    # Implements Image
  end
end

