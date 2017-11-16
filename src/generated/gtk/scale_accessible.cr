require "./range_accessible"

module Gtk
  class ScaleAccessible < RangeAccessible
    @pointer : Void*
    def initialize(pointer : LibGtk::ScaleAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ScaleAccessible*)
    end

    # Implements Component
    # Implements Value
  end
end

