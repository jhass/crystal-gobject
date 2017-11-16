require "./entry_accessible"

module Gtk
  class SpinButtonAccessible < EntryAccessible
    @pointer : Void*
    def initialize(pointer : LibGtk::SpinButtonAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::SpinButtonAccessible*)
    end

    # Implements Action
    # Implements Component
    # Implements EditableText
    # Implements Text
    # Implements Value
  end
end

