require "./widget_accessible"

module Gtk
  class LevelBarAccessible < WidgetAccessible
    @pointer : Void*
    def initialize(pointer : LibGtk::LevelBarAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::LevelBarAccessible*)
    end

    # Implements Component
    # Implements Value
  end
end

