require "./widget_accessible"

module Gtk
  class SpinnerAccessible < WidgetAccessible
    @pointer : Void*
    def initialize(pointer : LibGtk::SpinnerAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::SpinnerAccessible*)
    end

    # Implements Component
    # Implements Image
  end
end

