require "./renderer_cell_accessible"

module Gtk
  class BooleanCellAccessible < RendererCellAccessible
    @pointer : Void*
    def initialize(pointer : LibGtk::BooleanCellAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::BooleanCellAccessible*)
    end

    # Implements Action
    # Implements Component
    # Implements TableCell
  end
end

