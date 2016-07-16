require "./renderer_cell_accessible"

module Gtk
  class ImageCellAccessible < RendererCellAccessible
    @gtk_image_cell_accessible : LibGtk::ImageCellAccessible*?
    def initialize(@gtk_image_cell_accessible : LibGtk::ImageCellAccessible*)
    end

    def to_unsafe
      @gtk_image_cell_accessible.not_nil!.as(Void*)
    end

    # Implements Action
    # Implements Component
    # Implements Image
  end
end

