require "./cell_accessible"

module Gtk
  class RendererCellAccessible < CellAccessible
    def initialize(@gtk_renderer_cell_accessible)
    end

    def to_unsafe
      @gtk_renderer_cell_accessible.not_nil!
    end

    # Implements Action
    # Implements Component

    def self.new_internal(renderer)
      __return_value = LibGtk.renderer_cell_accessible_new((renderer.to_unsafe as LibGtk::CellRenderer*))
      Atk::Object.new(__return_value)
    end

  end
end

