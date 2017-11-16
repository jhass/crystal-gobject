require "./widget_accessible"

module Gtk
  class ImageAccessible < WidgetAccessible
    @pointer : Void*
    def initialize(pointer : LibGtk::ImageAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ImageAccessible*)
    end

    # Implements Component
    # Implements Image
  end
end

