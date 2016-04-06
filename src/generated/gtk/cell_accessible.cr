require "./accessible"

module Gtk
  class CellAccessible < Accessible
    def initialize(@gtk_cell_accessible)
    end

    def to_unsafe
      @gtk_cell_accessible.not_nil!
    end

    # Implements Action
    # Implements Component
  end
end

