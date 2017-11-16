require "./widget_accessible"

module Gtk
  class LabelAccessible < WidgetAccessible
    @pointer : Void*
    def initialize(pointer : LibGtk::LabelAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::LabelAccessible*)
    end

    # Implements Component
    # Implements Hypertext
    # Implements Text
  end
end

