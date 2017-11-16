require "./widget_accessible"

module Gtk
  class ProgressBarAccessible < WidgetAccessible
    @pointer : Void*
    def initialize(pointer : LibGtk::ProgressBarAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ProgressBarAccessible*)
    end

    # Implements Component
    # Implements Value
  end
end

