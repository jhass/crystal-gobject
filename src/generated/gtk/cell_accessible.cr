require "./accessible"

module Gtk
  class CellAccessible < Accessible
    @gtk_cell_accessible : LibGtk::CellAccessible*?
    def initialize(@gtk_cell_accessible : LibGtk::CellAccessible*)
    end

    def to_unsafe
      @gtk_cell_accessible.not_nil!
    end

    # Implements Action
    # Implements Component
  end
end

