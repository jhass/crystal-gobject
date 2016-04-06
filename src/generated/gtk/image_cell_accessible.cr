require "./renderer_cell_accessible"

module Gtk
  class ImageCellAccessible < RendererCellAccessible
    def initialize(@gtk_image_cell_accessible)
    end

    def to_unsafe
      @gtk_image_cell_accessible.not_nil!
    end

    # Implements Action
    # Implements Component
    # Implements Image
  end
end

