require "./renderer_cell_accessible"

module Gtk
  class TextCellAccessible < RendererCellAccessible
    @pointer : Void*
    def initialize(pointer : LibGtk::TextCellAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::TextCellAccessible*)
    end

    # Implements Action
    # Implements Component
    # Implements Text
  end
end

