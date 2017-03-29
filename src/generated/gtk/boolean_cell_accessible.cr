require "./renderer_cell_accessible"

module Gtk
  class BooleanCellAccessible < RendererCellAccessible
    @gtk_boolean_cell_accessible : LibGtk::BooleanCellAccessible*?
    def initialize(@gtk_boolean_cell_accessible : LibGtk::BooleanCellAccessible*)
    end

    def to_unsafe
      @gtk_boolean_cell_accessible.not_nil!
    end

    # Implements Action
    # Implements Component
  end
end

