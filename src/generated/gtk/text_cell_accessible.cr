require "./renderer_cell_accessible"

module Gtk
  class TextCellAccessible < RendererCellAccessible
    @gtk_text_cell_accessible : LibGtk::TextCellAccessible*?
    def initialize(@gtk_text_cell_accessible : LibGtk::TextCellAccessible*)
    end

    def to_unsafe
      @gtk_text_cell_accessible.not_nil!.as(Void*)
    end

    # Implements Action
    # Implements Component
    # Implements Text
  end
end

