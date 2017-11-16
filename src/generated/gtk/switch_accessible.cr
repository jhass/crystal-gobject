require "./widget_accessible"

module Gtk
  class SwitchAccessible < WidgetAccessible
    @pointer : Void*
    def initialize(pointer : LibGtk::SwitchAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::SwitchAccessible*)
    end

    # Implements Action
    # Implements Component
  end
end

