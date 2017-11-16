require "./widget_accessible"

module Gtk
  class EntryAccessible < WidgetAccessible
    @pointer : Void*
    def initialize(pointer : LibGtk::EntryAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::EntryAccessible*)
    end

    # Implements Action
    # Implements Component
    # Implements EditableText
    # Implements Text
  end
end

