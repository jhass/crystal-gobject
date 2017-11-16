require "./accessible"

module Gtk
  class WidgetAccessible < Accessible
    @pointer : Void*
    def initialize(pointer : LibGtk::WidgetAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::WidgetAccessible*)
    end

    # Implements Component
  end
end

