require "./widget_accessible"

module Gtk
  class ContainerAccessible < WidgetAccessible
    @pointer : Void*
    def initialize(pointer : LibGtk::ContainerAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ContainerAccessible*)
    end

    # Implements Component
  end
end

