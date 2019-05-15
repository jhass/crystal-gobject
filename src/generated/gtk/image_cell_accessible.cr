require "./renderer_cell_accessible"

module Gtk
  class ImageCellAccessible < RendererCellAccessible
    @pointer : Void*
    def initialize(pointer : LibGtk::ImageCellAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ImageCellAccessible*)
    end

    # Implements Action
    # Implements Component
    # Implements Image
    # Implements TableCell
  end
end

