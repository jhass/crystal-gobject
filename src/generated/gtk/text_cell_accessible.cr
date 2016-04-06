require "./renderer_cell_accessible"

module Gtk
  class TextCellAccessible < RendererCellAccessible
    def initialize(@gtk_text_cell_accessible)
    end

    def to_unsafe
      @gtk_text_cell_accessible.not_nil!
    end

    # Implements Action
    # Implements Component
    # Implements Text
  end
end

