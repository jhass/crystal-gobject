require "./widget_accessible"

module Gtk
  class RangeAccessible < WidgetAccessible
    @pointer : Void*
    def initialize(pointer : LibGtk::RangeAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::RangeAccessible*)
    end

    # Implements Component
    # Implements Value
  end
end

