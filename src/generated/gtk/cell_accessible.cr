require "./accessible"

module Gtk
  class CellAccessible < Accessible
    @pointer : Void*
    def initialize(pointer : LibGtk::CellAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::CellAccessible*)
    end

    # Implements Action
    # Implements Component
    # Implements TableCell
  end
end

