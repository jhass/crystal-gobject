require "./widget_accessible"

module Gtk
  class ArrowAccessible < WidgetAccessible
    @pointer : Void*
    def initialize(pointer : LibGtk::ArrowAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ArrowAccessible*)
    end

    # Implements Component
    # Implements Image
  end
end

